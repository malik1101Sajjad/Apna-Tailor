import 'package:apna_tailor/Controller/Export/export_file.dart';


class DetailsMaleDataScreen extends StatelessWidget {
  const DetailsMaleDataScreen({required this.male, super.key});
  final Male male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Column(
        children: [
          // 🧡 Title
          Expanded(
            flex: 2,
            child: CustomScreenTitle(title: 'Detail Male Data'),
          ),

          // 🧡 Table Data
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                margin: SizeConstants.tableMargin,
                decoration: CustomBoxdecoration(),
                child: Table(
                  border: TableBorder.all(
                      width: 1.5,
                      color: Colors.black,
                      borderRadius: SizeConstants.tabBarBorderRadius),
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(3),
                  },
                  children: [
                    _buildTableRow("Name", "نام", male.name),
                    _buildTableRow("Phone", "نمبر", male.phone),
                    _buildTableRow("Length", "لمبائی", male.length),
                    _buildTableRow("Arm", "بازو", male.arm),
                    _buildTableRow("Shoulder", "تیرہ", male.shoulder),
                    _buildTableRow("Collar", "کالر", male.collar),
                    _buildTableRow("Chest", "چھاتی", male.chest),
                    _buildTableRow("Lap", "دامن", male.lap),
                    _buildTableRow("Pant", "شلوار", male.pant),
                    _buildTableRow("Paincha", "پانچہ", male.paincha),
                    _buildTableRow("Info", "معلومات", male.additionalInfo),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🧡 Helper Method for Table Rows
  TableRow _buildTableRow(String label, String emoji, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AutoSizeText(
            textAlign: TextAlign.start,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AutoSizeText(
            textAlign: TextAlign.end,
            emoji,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AutoSizeText(
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            value,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
