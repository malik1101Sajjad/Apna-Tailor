import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.title,
      required this.margin,
      required this.padding,
      super.key});
  final String title;
  final double margin;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: margin, right: margin, top: 10, bottom: 10),
      padding: EdgeInsets.all(padding),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: CustomColor.gradient,
          borderRadius: BorderRadius.circular(15)),
      child: AutoSizeText(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        title,
        style: TextStyle(color: CustomColor.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
