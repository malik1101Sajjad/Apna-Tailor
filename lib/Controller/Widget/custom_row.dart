import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomRow extends StatelessWidget {
  const CustomRow(
      {required this.hinttext, required this.controller, super.key});
  final String hinttext;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: CustomColor.white,
                boxShadow: [
                  BoxShadow(
                    color: CustomColor.shadowColor,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(4, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              cursorColor: CustomColor.black,
              maxLength: 3,
              textAlign: TextAlign.center,
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: '00', counterText: ''),
            ),
          ),
        ),
        Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: AutoSizeText(
                textAlign: TextAlign.end,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                hinttext,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }
}
