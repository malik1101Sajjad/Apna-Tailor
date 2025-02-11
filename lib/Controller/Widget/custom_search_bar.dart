

import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {required this.controller, required this.onChanged, super.key});
  final TextEditingController controller;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        color: CustomColor.white,
        border: Border.all(width: 1.5, color: CustomColor.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        controller: controller,
        decoration:  InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: CustomColor.black),
          hintText: 'Search...',
          hintStyle: TextStyle(color:CustomColor.black),
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
        onChanged: onChanged
      ),
    );
  }
}
