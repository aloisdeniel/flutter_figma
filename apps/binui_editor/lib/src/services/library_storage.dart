import 'dart:convert';

import 'package:binui/binui.dart' as b;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

/// Metadata for a stored library
class LibraryMetadata {
  LibraryMetadata({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LibraryMetadata.fromJson(Map<String, dynamic> json) {
    return LibraryMetadata(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  final String id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt.toIso8601String(),
  };

  LibraryMetadata copyWith({
    String? id,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return LibraryMetadata(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

/// Service for storing and retrieving libraries from local storage
class LibraryStorage {
  LibraryStorage._();

  static LibraryStorage? _instance;
  static LibraryStorage get instance => _instance ??= LibraryStorage._();

  static const _metadataKey = 'binui_libraries_metadata';
  static const _libraryKeyPrefix = 'binui_library_';
  static const _selectedLibraryKey = 'binui_selected_library';

  final _uuid = const Uuid();
  SharedPreferences? _prefs;

  Future<SharedPreferences> get _preferences async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  /// Get all library metadata
  Future<List<LibraryMetadata>> getLibraryMetadataList() async {
    final prefs = await _preferences;
    final jsonString = prefs.getString(_metadataKey);
    if (jsonString == null) return [];

    try {
      final jsonList = jsonDecode(jsonString) as List<dynamic>;
      return jsonList
          .map((e) => LibraryMetadata.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      return [];
    }
  }

  /// Save metadata list
  Future<void> _saveMetadataList(List<LibraryMetadata> list) async {
    final prefs = await _preferences;
    final jsonString = jsonEncode(list.map((e) => e.toJson()).toList());
    await prefs.setString(_metadataKey, jsonString);
  }

  /// Get the selected library ID
  Future<String?> getSelectedLibraryId() async {
    final prefs = await _preferences;
    return prefs.getString(_selectedLibraryKey);
  }

  /// Set the selected library ID
  Future<void> setSelectedLibraryId(String? id) async {
    final prefs = await _preferences;
    if (id == null) {
      await prefs.remove(_selectedLibraryKey);
    } else {
      await prefs.setString(_selectedLibraryKey, id);
    }
  }

  /// Create a new library and return its metadata
  Future<LibraryMetadata> createLibrary(String name) async {
    final id = _uuid.v4();
    final now = DateTime.now();
    final metadata = LibraryMetadata(
      id: id,
      name: name,
      createdAt: now,
      updatedAt: now,
    );

    // Create empty library
    final library = b.Library()..name = name;

    // Save library data
    await _saveLibraryData(id, library);

    // Update metadata list
    final metadataList = await getLibraryMetadataList();
    metadataList.add(metadata);
    await _saveMetadataList(metadataList);

    return metadata;
  }

  /// Load a library by ID
  Future<b.Library?> loadLibrary(String id) async {
    final prefs = await _preferences;
    final base64Data = prefs.getString('$_libraryKeyPrefix$id');
    if (base64Data == null) return null;

    try {
      final bytes = base64Decode(base64Data);
      final library = b.Library();
      library.mergeFromBuffer(bytes);
      return library;
    } catch (e) {
      return null;
    }
  }

  /// Save a library
  Future<void> saveLibrary(String id, b.Library library) async {
    await _saveLibraryData(id, library);

    // Update metadata
    final metadataList = await getLibraryMetadataList();
    final index = metadataList.indexWhere((m) => m.id == id);
    if (index >= 0) {
      metadataList[index] = metadataList[index].copyWith(
        name: library.name.isNotEmpty ? library.name : metadataList[index].name,
        updatedAt: DateTime.now(),
      );
      await _saveMetadataList(metadataList);
    }
  }

  Future<void> _saveLibraryData(String id, b.Library library) async {
    final prefs = await _preferences;
    final bytes = library.writeToBuffer();
    final base64Data = base64Encode(bytes);
    await prefs.setString('$_libraryKeyPrefix$id', base64Data);
  }

  /// Delete a library
  Future<void> deleteLibrary(String id) async {
    final prefs = await _preferences;

    // Remove library data
    await prefs.remove('$_libraryKeyPrefix$id');

    // Update metadata list
    final metadataList = await getLibraryMetadataList();
    metadataList.removeWhere((m) => m.id == id);
    await _saveMetadataList(metadataList);

    // Clear selection if this was the selected library
    final selectedId = await getSelectedLibraryId();
    if (selectedId == id) {
      await setSelectedLibraryId(null);
    }
  }

  /// Rename a library
  Future<void> renameLibrary(String id, String newName) async {
    final metadataList = await getLibraryMetadataList();
    final index = metadataList.indexWhere((m) => m.id == id);
    if (index >= 0) {
      metadataList[index] = metadataList[index].copyWith(
        name: newName,
        updatedAt: DateTime.now(),
      );
      await _saveMetadataList(metadataList);
    }

    // Also update the library name
    final library = await loadLibrary(id);
    if (library != null) {
      library.name = newName;
      await _saveLibraryData(id, library);
    }
  }
}
