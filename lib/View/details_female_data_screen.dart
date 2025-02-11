import 'package:apna_tailor/Controller/Export/export_file.dart';

class DetailsFemaleDataScreen extends StatelessWidget {
  const DetailsFemaleDataScreen({required this.female, super.key});
  final Female female;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 🧡 Title
          Expanded(
            flex: 2,
            child: CustomScreenTitle(title: 'Detail Female Data'),
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
                      borderRadius: SizeConstants.tableBorderRadius),
                  columnWidths: const {
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(3),
                  },
                  children: [
                    _buildTableRow("Name", "نام", female.name),
                    _buildTableRow("Phone", "نمبر", female.phone),
                    _buildTableRow("Length", "لمبائی", female.length),
                    _buildTableRow("Arm", "بازو", female.arm),
                    _buildTableRow("Arm Round", "بازوگولائ", female.armRound),
                    _buildTableRow("Shoulder", "تیرہ", female.shoulder),
                    _buildTableRow("Chest", "چھاتی", female.chest),
                    _buildTableRow("Waist", "کمر", female.waist),
                    _buildTableRow("Hips", "کولہے", female.hips),
                    _buildTableRow("Lap", "دامن", female.lap),
                    _buildTableRow("Side", "سائڈ", female.side),
                    _buildTableRow("Neck", "گلہ", female.neck),
                    _buildTableRow("Pant", "شلوار", female.pant),
                    _buildTableRow("Paincha", "پانچہ", female.paincha),
                    _buildTableRow(
                        "Pant Width", "شلوار \n چوڑای", female.pantWidth),
                    _buildTableRow("Info", "معلومات", female.additionalInfo),
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
            value,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
