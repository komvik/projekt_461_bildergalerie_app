import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/gallery/models/gallery_item.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({
    super.key,
    required this.galleryItem,
  });

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 450,
      child: Image.asset(galleryItem.imagePath, fit: BoxFit.cover),
    );
  }
}
