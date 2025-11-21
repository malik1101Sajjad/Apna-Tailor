import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomColor {
  // Gradient Color
  static Gradient gradient = LinearGradient(
    colors: [
      Color(0xFF000000),
      Color(0xFFED1C24),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  //   Color
  static Color transparent = Colors.transparent;
  static Color black = Colors.black;
  static Color red = Colors.red;
  static Color white = Colors.white;
  static Color grey = Colors.grey;
  static Color shadowColor = Colors.black.withAlpha(50);
}
