import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomScreenTitle extends StatelessWidget {
  const CustomScreenTitle({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: CustomColor.gradient,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
      child: AutoSizeText(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        title,
        style: TextStyle(
          color: CustomColor.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
