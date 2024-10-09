import 'package:flutter/material.dart';

class FavoritePicturesWidget extends StatelessWidget {
  const FavoritePicturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "favorite pictures",
            style: TextStyle(fontSize: 26),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Flexible(
                child: Text(
                  "here you will find your favorite pictures",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
