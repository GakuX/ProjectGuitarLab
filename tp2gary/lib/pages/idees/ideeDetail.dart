import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ideeDetailScreen extends StatefulWidget {
  final int id;
  final String desc;
  const ideeDetailScreen({super.key, required this.id, required this.desc});

  @override
  State<ideeDetailScreen> createState() => _ideeDetailScreenState();
}

class _ideeDetailScreenState extends State<ideeDetailScreen> {
  final ImagePicker _picker = ImagePicker();
  final List<XFile> _selectedImages = [];

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;

    setState(() {
      _selectedImages.add(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.error,
        title: Text('Détails de l\'idée ${widget.id}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/idees');
          },
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Détails de l\'idée ${widget.id}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            SizedBox(child: Text("${widget.desc}")),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(
                "EN CONSTRUCTION (en ce moment je veux seulement faire fonctionner le téléversement de l'image)",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight(1000),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 330),
              child: SizedBox(
                child: Text("Notes : ", style: TextStyle(fontSize: 20)),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 0),
              child: SizedBox(
                child: Text(
                  "tester le televersement de l'image ici :  ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.only(right: 330),
              child: Text(
                "Photos: ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight(1000),
                ),
              ),
            ),
            SizedBox(height: 15),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (final image in _selectedImages)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      File(image.path),
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                IconButton(
                  iconSize: 50,
                  onPressed: _pickImage,
                  icon: const Icon(Icons.add_box_rounded),
                  style: IconButton.styleFrom(foregroundColor: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
