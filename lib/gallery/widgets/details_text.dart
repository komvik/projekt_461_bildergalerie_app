import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/gallery/models/gallery_item.dart';

class DetailsText extends StatelessWidget {
  const DetailsText({
    super.key,
    required this.galleryItem,
  });

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            galleryItem.imageTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
    );
  }
}
