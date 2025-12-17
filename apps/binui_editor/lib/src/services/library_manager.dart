import 'dart:async';

import 'package:binui/binui.dart' as b;
import 'package:flutter/foundation.dart';

import 'library_storage.dart';

/// Manages the current library state with throttled saving
class LibraryManager extends ChangeNotifier {
  LibraryManager() {
    _init();
  }

  final LibraryStorage _storage = LibraryStorage.instance;

  List<LibraryMetadata> _libraries = [];
  String? _selectedLibraryId;
  b.Library? _currentLibrary;
  bool _isLoading = true;
  String? _error;

  Timer? _saveTimer;
  static const _saveThrottleDuration = Duration(milliseconds: 500);

  List<LibraryMetadata> get libraries => _libraries;
  String? get selectedLibraryId => _selectedLibraryId;
  b.Library? get currentLibrary => _currentLibrary;
  bool get isLoading => _isLoading;
  String? get error => _error;

  LibraryMetadata? get currentLibraryMetadata {
    if (_selectedLibraryId == null) return null;
    return _libraries.where((m) => m.id == _selectedLibraryId).firstOrNull;
  }

  Future<void> _init() async {
    try {
      _libraries = await _storage.getLibraryMetadataList();
      _selectedLibraryId = await _storage.getSelectedLibraryId();

      // Load the selected library if there is one
      if (_selectedLibraryId != null) {
        _currentLibrary = await _storage.loadLibrary(_selectedLibraryId!);
        // If library doesn't exist anymore, clear selection
        if (_currentLibrary == null) {
          _selectedLibraryId = null;
          await _storage.setSelectedLibraryId(null);
        }
      }

      _isLoading = false;
      _error = null;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _error = e.toString();
      notifyListeners();
    }
  }

  /// Refresh the library list
  Future<void> refresh() async {
    _libraries = await _storage.getLibraryMetadataList();
    notifyListeners();
  }

  /// Create a new library
  Future<LibraryMetadata> createLibrary(String name) async {
    final metadata = await _storage.createLibrary(name);
    _libraries = await _storage.getLibraryMetadataList();
    notifyListeners();
    return metadata;
  }

  /// Select a library by ID
  Future<void> selectLibrary(String id) async {
    if (_selectedLibraryId == id) return;

    // Save current library before switching
    await _saveNow();

    _selectedLibraryId = id;
    await _storage.setSelectedLibraryId(id);

    _currentLibrary = await _storage.loadLibrary(id);
    notifyListeners();
  }

  /// Update the current library from JSON
  void updateCurrentLibrary(b.Library? library) {
    _currentLibrary = library;
    _scheduleSave();
    notifyListeners();
  }

  /// Schedule a throttled save
  void _scheduleSave() {
    _saveTimer?.cancel();
    _saveTimer = Timer(_saveThrottleDuration, _saveNow);
  }

  /// Save immediately
  Future<void> _saveNow() async {
    _saveTimer?.cancel();
    _saveTimer = null;

    if (_selectedLibraryId != null && _currentLibrary != null) {
      await _storage.saveLibrary(_selectedLibraryId!, _currentLibrary!);
      // Refresh metadata to get updated timestamp
      _libraries = await _storage.getLibraryMetadataList();
      notifyListeners();
    }
  }

  /// Delete a library
  Future<void> deleteLibrary(String id) async {
    await _storage.deleteLibrary(id);
    _libraries = await _storage.getLibraryMetadataList();

    if (_selectedLibraryId == id) {
      _selectedLibraryId = null;
      _currentLibrary = null;
    }

    notifyListeners();
  }

  /// Rename a library
  Future<void> renameLibrary(String id, String newName) async {
    await _storage.renameLibrary(id, newName);
    _libraries = await _storage.getLibraryMetadataList();

    // Update current library name if it's the selected one
    if (_selectedLibraryId == id && _currentLibrary != null) {
      _currentLibrary!.name = newName;
    }

    notifyListeners();
  }

  @override
  void dispose() {
    _saveTimer?.cancel();
    // Save any pending changes before disposing
    if (_selectedLibraryId != null && _currentLibrary != null) {
      _storage.saveLibrary(_selectedLibraryId!, _currentLibrary!);
    }
    super.dispose();
  }
}
