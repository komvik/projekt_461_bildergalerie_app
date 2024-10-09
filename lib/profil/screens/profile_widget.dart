import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/profil/widgets/logo_profil.dart';
import 'package:projekt_461_bildergalerie_app/profil/widgets/text_profil.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
//
          LogoProfil(),
//
          TextProfil(),
        ],
      ),
    );
  }
}
