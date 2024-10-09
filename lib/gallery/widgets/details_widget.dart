import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/gallery/models/gallery_item.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.galleryItem});

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 103, 103),
        title: const Text(
          "Details",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 500,
              child: Image.asset(galleryItem.imagePath, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    galleryItem.imageTitle,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(galleryItem.imageDate),
                  SizedBox(
                    height: 150,
                    child: SingleChildScrollView(
                      child: Text(galleryItem.imageDescription),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
