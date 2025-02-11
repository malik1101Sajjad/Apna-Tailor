import 'package:apna_tailor/Controller/Export/export_file.dart';
part 'female_model.g.dart';
// 🧡 female model
@HiveType(typeId: 2)
class Female extends HiveObject {
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
  String armRound;

  @HiveField(6)
  String shoulder;

  @HiveField(7)
  String chest;

  @HiveField(8)
  String waist;

  @HiveField(9)
  String hips;

  @HiveField(10)
  String lap;

  @HiveField(11)
  String side;

  @HiveField(12)
  String neck;

  @HiveField(13)
  String pant;

  @HiveField(14)
  String paincha;

  @HiveField(15)
  String pantWidth;

  @HiveField(16)
  String additionalInfo;

  Female({
    required this.id,
    required this.name,
    required this.phone,
    required this.length,
    required this.arm,
    required this.armRound,
    required this.shoulder,
    required this.chest,
    required this.waist,
    required this.hips,
    required this.lap,
    required this.side,
    required this.neck,
    required this.pant,
    required this.paincha,
    required this.pantWidth,
    required this.additionalInfo,
  });
}
