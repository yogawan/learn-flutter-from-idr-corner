import 'dart:typed_data';
import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {

    final Uint8List dummyBytes = Uint8List.fromList(List.generate(10000, (i) => i % 256));

    return Scaffold(
      appBar: AppBar(title: const Text('All Image Types')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            /// 1. Asset Image (via Image.asset)
            const Text("1. Asset Image"),
            Image.asset(
              'assets/images/logo.png',
              width: 150,
              // height: 150,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 16),

            /// 2. Network Image
            const Text("2. Network Image"),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/a/ab/Meta-Logo.png',
              width: 150,
              // height: 150,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 16),

            /// 3. FadeInImage (from network with asset placeholder)
            const Text("3. FadeInImage"),
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/logo.png',
              image: 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Meta-Logo.png',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 16),

            /// 4. CircleAvatar (avatar dari gambar)
            const Text("4. Circle Avatar with Asset"),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),

            const SizedBox(height: 16),

            /// 5. DecorationImage (background container)
            const Text("5. Decoration Image as Background"),
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Hello Background!',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// 6. MemoryImage (contoh dummy)
            const Text("6. MemoryImage (dummy bytes)"),
            Image.memory(
              dummyBytes,
              width: 100,
              height: 100,
              errorBuilder: (_, __, ___) => const Text("Memory Image failed (dummy only)"),
            ),

            const SizedBox(height: 16),

            /// 7. File Image (komentar karena butuh permission dan picker)
            const Text("7. File Image (requires permission & file picker)"),
            const Text("// Gunakan FileImage(File(path)) dari dart:io"),
          ],
        ),
      ),
    );
  }
}
