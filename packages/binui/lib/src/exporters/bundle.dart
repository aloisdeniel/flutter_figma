import 'dart:typed_data';

class Bundle {
  const Bundle({required this.name, required this.files});
  final String name;
  final List<BundleFile> files;
}

sealed class BundleFile {
  const BundleFile(this.path);
  final String path;
}

class StringBundleFile extends BundleFile {
  const StringBundleFile(super.path, this.content);
  final String content;
}

class BinaryBundleFile extends BundleFile {
  const BinaryBundleFile(super.path, this.content);
  final Uint8List content;
}
