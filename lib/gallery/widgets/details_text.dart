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
          Row(
            children: [
              Text(
                galleryItem.imageTitle,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 50),
//
              ElevatedButton(
                onPressed: () {
                  //favoritesRepository.addFavorite(destination);
                  Navigator.of(context).pop();
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.teal[600]),
                child: const Text(
                  'Add to favorites',
                  style: TextStyle(color: Colors.white),
                ),
              ),
//
            ],
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
