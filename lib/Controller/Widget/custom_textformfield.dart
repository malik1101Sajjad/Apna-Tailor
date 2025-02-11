import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
  });
  final TextEditingController controller;
  final String hintText;
  final String validator;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: CustomBoxdecoration(),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 3, bottom: 3),
        child: TextFormField(
          cursorColor: CustomColor.black,
          textInputAction: TextInputAction.next,
          controller: controller,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
          validator: (value) => value!.isEmpty ? validator : null,
        ),
      ),
    );
  }
}
