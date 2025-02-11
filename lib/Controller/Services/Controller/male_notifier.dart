import 'package:apna_tailor/Controller/Export/export_file.dart';

class MaleNotifier extends StateNotifier<List<Male>> {
  // 🧡 maleRepository
  final MaleRepository maleRepository;

  MaleNotifier(this.maleRepository) : super([]) {
    loadMales();
  }

  // 🧡 Load all Male Data
  void loadMales() {
    state = maleRepository.getAllMales();
  }

  // 🧡 Add Male
  Future<void> addMale(Male male) async {
    await maleRepository.addMale(male);
    // 🧡 Refresh state
    loadMales();
  }

  // 🧡 Update Male
  Future<void> updateMale(Male male) async {
    await maleRepository.updateMale(male);
    loadMales();
  }

  // 🧡 Delete Male
  Future<void> deleteMale(String id) async {
    await maleRepository.deleteMale(id);
    loadMales();
  }
}

// 🧡 Riverpod Provider
final maleProvider = StateNotifierProvider<MaleNotifier, List<Male>>((ref) {
  return MaleNotifier(MaleRepository());
});
