import 'package:flutter/material.dart';

import '../../services/library_manager.dart';
import '../../services/library_storage.dart';

/// Modal dialog for picking or creating libraries
class LibraryPickerModal extends StatefulWidget {
  const LibraryPickerModal({super.key, required this.libraryManager});

  final LibraryManager libraryManager;

  static Future<void> show(BuildContext context, LibraryManager manager) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => LibraryPickerModal(libraryManager: manager),
    );
  }

  @override
  State<LibraryPickerModal> createState() => _LibraryPickerModalState();
}

class _LibraryPickerModalState extends State<LibraryPickerModal> {
  bool _isCreating = false;
  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _createLibrary() async {
    if (!_formKey.currentState!.validate()) return;

    final name = _nameController.text.trim();
    final metadata = await widget.libraryManager.createLibrary(name);
    await widget.libraryManager.selectLibrary(metadata.id);

    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _selectLibrary(LibraryMetadata metadata) async {
    await widget.libraryManager.selectLibrary(metadata.id);
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _deleteLibrary(LibraryMetadata metadata) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Library'),
        content: Text('Are you sure you want to delete "${metadata.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await widget.libraryManager.deleteLibrary(metadata.id);
    }
  }

  Future<void> _renameLibrary(LibraryMetadata metadata) async {
    final controller = TextEditingController(text: metadata.name);
    final newName = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Rename Library'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(
            labelText: 'Library Name',
            border: OutlineInputBorder(),
          ),
          onSubmitted: (value) => Navigator.of(context).pop(value),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(controller.text),
            child: const Text('Rename'),
          ),
        ],
      ),
    );

    if (newName != null && newName.trim().isNotEmpty) {
      await widget.libraryManager.renameLibrary(metadata.id, newName.trim());
    }
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.3,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return AnimatedBuilder(
          animation: widget.libraryManager,
          builder: (context, child) {
            return Column(
              children: [
                _buildHeader(context),
                Expanded(
                  child: _isCreating
                      ? _buildCreateForm()
                      : _buildLibraryList(scrollController),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        children: [
          Container(
            width: 32,
            height: 4,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.outline.withAlpha(100),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              if (_isCreating)
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => setState(() => _isCreating = false),
                ),
              Expanded(
                child: Text(
                  _isCreating ? 'New Library' : 'Libraries',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              if (!_isCreating)
                FilledButton.icon(
                  onPressed: () => setState(() {
                    _isCreating = true;
                    _nameController.clear();
                  }),
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('New'),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCreateForm() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _nameController,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Library Name',
                hintText: 'Enter a name for your library',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
              onFieldSubmitted: (_) => _createLibrary(),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _createLibrary,
              child: const Text('Create Library'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLibraryList(ScrollController scrollController) {
    final libraries = widget.libraryManager.libraries;
    final selectedId = widget.libraryManager.selectedLibraryId;

    if (libraries.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.folder_open,
              size: 64,
              color: Theme.of(context).colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              'No libraries yet',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Create a new library to get started',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: libraries.length,
      itemBuilder: (context, index) {
        final metadata = libraries[index];
        final isSelected = metadata.id == selectedId;

        return _LibraryListItem(
          metadata: metadata,
          isSelected: isSelected,
          onTap: () => _selectLibrary(metadata),
          onRename: () => _renameLibrary(metadata),
          onDelete: () => _deleteLibrary(metadata),
        );
      },
    );
  }
}

class _LibraryListItem extends StatelessWidget {
  const _LibraryListItem({
    required this.metadata,
    required this.isSelected,
    required this.onTap,
    required this.onRename,
    required this.onDelete,
  });

  final LibraryMetadata metadata;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onRename;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.primaryContainer
              : Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          Icons.folder,
          color: isSelected
              ? Theme.of(context).colorScheme.onPrimaryContainer
              : Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      title: Text(
        metadata.name,
        style: TextStyle(fontWeight: isSelected ? FontWeight.w600 : null),
      ),
      subtitle: Text(
        'Updated ${_formatDate(metadata.updatedAt)}',
        style: TextStyle(
          fontSize: 12,
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSelected)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Active',
                style: TextStyle(
                  fontSize: 11,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, size: 20),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'rename',
                child: Row(
                  children: [
                    Icon(Icons.edit, size: 18),
                    SizedBox(width: 8),
                    Text('Rename'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      size: 18,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Delete',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            onSelected: (value) {
              if (value == 'rename') {
                onRename();
              } else if (value == 'delete') {
                onDelete();
              }
            },
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);

    if (diff.inMinutes < 1) {
      return 'just now';
    } else if (diff.inHours < 1) {
      return '${diff.inMinutes}m ago';
    } else if (diff.inDays < 1) {
      return '${diff.inHours}h ago';
    } else if (diff.inDays < 7) {
      return '${diff.inDays}d ago';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}
