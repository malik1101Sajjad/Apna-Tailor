import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomDialog {
  static void showDeleteDialog({
    required BuildContext context,
    required VoidCallback onConfirm,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: CustomColor.white,
          title: const Text(
            "Deletion",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: const Text("Are you sure you want to delete this record?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child:  Text(
                "Cancel",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: CustomColor.black),
              ),
            ),
            TextButton(
              onPressed: () {
                onConfirm();
                Navigator.pop(context);
              },
              child:  Text(
                "Delete",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color:CustomColor.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
