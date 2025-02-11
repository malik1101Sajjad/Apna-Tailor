import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomAdditionalInfoField extends StatelessWidget {
  const CustomAdditionalInfoField(
      {required this.hintText, required this.controller, super.key});
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: CustomBoxdecoration(),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
        child: TextFormField(
          cursorColor: CustomColor.black,
          textInputAction: TextInputAction.done,
          controller: controller,
          maxLines: 3,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
