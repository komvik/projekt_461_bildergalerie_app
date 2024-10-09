import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projekt_461_bildergalerie_app/settimgs/repositories/settings_repository.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final SettingsRepository settingsRepository = SettingsRepository();

  @override
  Widget build(BuildContext context) {
    bool darkMode = settingsRepository.getDarkMode();
    String fontSize = settingsRepository.getFontSize();
    String distanceUnit = settingsRepository.getDistanceUnit();

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            SwitchListTile(
              title: const Text('Dark Mode'),
              subtitle: const Text('Enable dark theme for the app'),
              value: darkMode,
              onChanged: (bool value) {
                setState(() {
                  settingsRepository.setDarkMode(value);
                });
              },
              activeColor: Colors.teal,
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Font Size'),
              subtitle: const Text('Adjust the font size in the app'),
              trailing: DropdownButton<String>(
                value: fontSize,
                items: <String>['Small', 'Medium', 'Large'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    settingsRepository.setFontSize(newValue!);
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Number of row'),
              subtitle: const Text('How many photos will be shown in one row'),
              trailing: DropdownButton<String>(
                value: distanceUnit,
                items: <String>['One', 'Two'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    settingsRepository.setDistanceUnit(newValue!);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
