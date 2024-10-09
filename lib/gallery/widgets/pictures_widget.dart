import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/gallery/models/gallery_item.dart';
import 'package:projekt_461_bildergalerie_app/gallery/repositories/gallery_data.dart';

class PicturesWidget extends StatelessWidget {
  const PicturesWidget({super.key});

  final double gridMainSpacing = 5.0; // senkrecht
  final double gridCrosSpacing = 5.0; // waagerecht
  final int gridCrosCount = 2; // Anzahl der Spalten

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //gridCrosCount,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
          ),
          itemCount: galleryData.length,
          itemBuilder: (context, index) {
            final GalleryItem item = galleryData[index];
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
          }),
    );
  }
}
