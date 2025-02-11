

import 'package:apna_tailor/Controller/Export/export_file.dart';

class CustomListItem extends StatelessWidget {
  final String name;
  final String phone;
  final VoidCallback onTap;
  final VoidCallback onUpdate;
  final VoidCallback onDelete;

  const CustomListItem({
    super.key,
    required this.name,
    required this.phone,
    required this.onTap,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: CustomBoxdecoration(),
      child: ListTile(
        splashColor: CustomColor.transparent,
        onTap: onTap,
        title: AutoSizeText(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          "Name: $name",
          style:  TextStyle(
            fontSize: 10,
            color: CustomColor.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: AutoSizeText(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          "Phone: $phone",
          style:  TextStyle(
            fontSize: 10,
            color: CustomColor.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon:  AutoSizeText(
                'Update',
                style: TextStyle(
                  color: CustomColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: onUpdate,
            ),
            const AutoSizeText('|'),
            IconButton(
              icon:  AutoSizeText(
                'Delete',
                style: TextStyle(
                  color: CustomColor.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}