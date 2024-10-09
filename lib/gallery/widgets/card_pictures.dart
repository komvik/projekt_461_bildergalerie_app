import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/gallery/models/gallery_item.dart';

class CardPictures extends StatelessWidget {
  const CardPictures({
    super.key,
    required this.item,
  });

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
          child: SizedBox(
            width: 170,
            height: 150,
            child: Image.asset(item.imagePath, fit: BoxFit.cover),
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              item.imageTitle,
              style: const TextStyle(fontSize: 12),
            ),
            const Expanded(
              child: Icon(
                Icons.favorite_border,
                size: 12,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
