import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomSnackBar {
  static void show(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: AutoSizeText(
          message,
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            color: CustomColor.white,
          ),
        ),
        backgroundColor: CustomColor.black,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
      ),
    );
  }
}
