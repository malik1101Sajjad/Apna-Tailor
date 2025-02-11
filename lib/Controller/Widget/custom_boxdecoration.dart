import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomBoxdecoration extends BoxDecoration {
  CustomBoxdecoration()
      : super(
          color: CustomColor.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: CustomColor.shadowColor,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(4, 4),
            ),
          ],
          
        );
}
