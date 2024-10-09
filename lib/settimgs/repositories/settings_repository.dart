class SettingsRepository {
  bool _darkMode = false;
  String _fontSize = 'Medium';
  String _distanceUnit = 'One';

  bool getDarkMode() => _darkMode;
  String getFontSize() => _fontSize;
  String getDistanceUnit() => _distanceUnit;

  void setDarkMode(bool value) {
    _darkMode = value;
    // log('Dark Mode set to: $_darkMode');
  }

  void setFontSize(String value) {
    _fontSize = value;
    // log('Font Size set to: $_fontSize');
  }

  void setDistanceUnit(String value) {
    _distanceUnit = value;
    // log('Distance Unit set to: $_distanceUnit');
  }
}
