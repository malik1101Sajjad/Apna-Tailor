import 'package:apna_tailor/Controller/Export/export_file.dart';

class FemaleRepository {
  // 🧡 Box name
  final Box<Female> femaleBox = Hive.box<Female>('femaleBox');

// 🧡 Insert Female Data
  Future<void> addFemale(Female female) async {
    await femaleBox.put(female.id, female);
  }

// 🧡 Get All Females
  List<Female> getAllFemales() {
    return femaleBox.values.toList();
  }

// 🧡 Update Female Data
  Future<void> updateFemale(Female female) async {
    await femaleBox.put(female.id, female);
  }

// 🧡 Delete Female Data
  Future<void> deleteFemale(String id) async {
    await femaleBox.delete(id);
  }
}
