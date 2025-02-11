import 'package:apna_tailor/Controller/Export/export_file.dart';
part 'male_model.g.dart';
// 🧡 male model
@HiveType(typeId: 1)
class Male extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String phone;

  @HiveField(3)
  String length;

  @HiveField(4)
  String arm;

  @HiveField(5)
  String shoulder;

  @HiveField(6)
  String collar;

  @HiveField(7)
  String chest;

  @HiveField(8)
  String lap;

  @HiveField(9)
  String pant;

  @HiveField(10)
  String paincha;

  @HiveField(11)
  String additionalInfo;

  Male({
    required this.id,
    required this.name,
    required this.phone,
    required this.length,
    required this.arm,
    required this.shoulder,
    required this.collar,
    required this.chest,
    required this.lap,
    required this.pant,
    required this.paincha,
    required this.additionalInfo,
  });
}
