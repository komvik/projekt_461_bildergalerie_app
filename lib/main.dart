import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/favorite/favorite_pictures_widget.dart';
import 'package:projekt_461_bildergalerie_app/gallery/screens/pictures_widget.dart';
import 'package:projekt_461_bildergalerie_app/profil/screens/profile_widget.dart';
import 'package:projekt_461_bildergalerie_app/settimgs/settings_widget.dart';

void main() {
  runApp(const AppGallery());
}

class AppGallery extends StatefulWidget {
  const AppGallery({super.key});

  @override
  State<AppGallery> createState() => _AppGalleryState();
}

class _AppGalleryState extends State<AppGallery> {
  final List<Widget> widgets = [
    const PicturesWidget(),
    const FavoritePicturesWidget(),
    const ProfileWidget(),
    const SettingsWidget(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 103, 103),
          title: const Text(
            "MyGallery",
            style: TextStyle(color: Colors.white),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            currentIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.photo_library_outlined), label: "Pictures"),
            NavigationDestination(
                icon: Icon(Icons.favorite), label: "Favorite"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            NavigationDestination(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
        body: widgets[currentIndex],
      ),
    );
  }
}
