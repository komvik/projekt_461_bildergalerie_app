import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/gallery/models/gallery_item.dart';
import 'package:projekt_461_bildergalerie_app/gallery/widgets/details_image.dart';
import 'package:projekt_461_bildergalerie_app/gallery/widgets/details_text.dart';

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
            DetailsImage(galleryItem: galleryItem),
            DetailsText(galleryItem: galleryItem),
          ],
        ),
      ),
    );
  }
}
