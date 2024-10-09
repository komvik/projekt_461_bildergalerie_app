import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
//
          Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(100), // Image radius
                child:
                    const Image(image: AssetImage("assets/images/kaya.jpeg")),
              ),
            ),
          ),
//
          const Text("Kaya Müller", style: TextStyle(fontSize: 28)),
          const Text("Fotograf", style: TextStyle(fontSize: 18)),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: SizedBox(
              height: 300,
              child: SingleChildScrollView(
                  child: Text(
                "Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren,"
                "der die Welt durch die Linse entdeckt. Mit einem Hintergrund in"
                "der visuellen Kunst und jahrelanger Erfahrung in der Fotografie "
                "habe ich einen Blick für die Schönheit im Alltäglichen entwickelt."
                "Meine Spezialität liegt in der Sport- und Naturfotografie,"
                " wo ich das Spiel von Licht und Schatten einfange, um emotionale "
                "und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass "
                "jeder Moment einzigartig ist und seine eigene Geschichte erzählt. "
                "In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu"
                " interpretieren und sie durch kreative Kompositionen und Nuancen "
                "zum Leben zu erwecken. Meine fotografische Reise hat mich durch "
                "verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und"
                " Landschaften festhalte, immer auf der Suche nach neuen Perspektiven "
                "und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern"
                " nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. "
                "Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, "
                "meine Leidenschaft und mein Können zu zeigen und eine Verbindung "
                "zwischen dem Betrachter und dem Bild herzustellen.",
                style: TextStyle(fontSize: 14),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
