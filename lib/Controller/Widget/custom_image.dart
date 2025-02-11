import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({required this.imgUrl, required this.title, super.key});
  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 7, right: 7),
      alignment: Alignment.bottomRight,
      margin: EdgeInsets.all(15),
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
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.fill)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(gradient: CustomColor.gradient),
          padding: EdgeInsets.all(5),
          child: AutoSizeText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            title,
            style: TextStyle(
              color: CustomColor.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
