import 'package:flutter/material.dart';

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
                icon: Icon(Icons.picture_in_picture_alt), label: "Pictures"),
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

class PicturesWidget extends StatelessWidget {
  const PicturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "IMAGE 1",
            style: TextStyle(fontSize: 26),
          ),
          Text(
            "IMAGE beschreibung",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "IMAGE 2",
            style: TextStyle(fontSize: 26),
          ),
          Text(
            "IMAGE 3",
            style: TextStyle(fontSize: 26),
          ),
          Text(
            "IMAGE 4",
            style: TextStyle(fontSize: 26),
          ),
          Text(
            "IMAGE 5",
            style: TextStyle(fontSize: 26),
          ),
        ],
      ),
    );
  }
}

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

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Icon(
            Icons.person,
            size: 42,
          ),
          Text("MyProfile", style: TextStyle(fontSize: 28)),
          Text("über mich", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Icon(
            Icons.settings,
            size: 42,
          ),
        ],
      ),
    );
  }
}
