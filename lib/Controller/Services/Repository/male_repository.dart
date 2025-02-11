import 'package:apna_tailor/Controller/Export/export_file.dart';

class MaleRepository {
  //  // 🧡 box name
  final Box<Male> maleBox = Hive.box<Male>('maleBox');

  // 🧡 Insert Male Data
  Future<void> addMale(Male male) async {
    await maleBox.put(male.id, male);
  }

  // 🧡 Get All Males
  List<Male> getAllMales() {
    return maleBox.values.toList();
  }

  // 🧡 Update Male Data
  Future<void> updateMale(Male male) async {
    await maleBox.put(male.id, male);
  }

  // 🧡 Delete Male Data
  Future<void> deleteMale(String id) async {
    await maleBox.delete(id);
  }
}
