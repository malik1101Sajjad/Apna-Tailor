import 'package:apna_tailor/Controller/Export/export_file.dart';


class FemaleNotifier extends StateNotifier<List<Female>> {
  // 🧡 Female Repository
  final FemaleRepository femaleRepository;

  FemaleNotifier(this.femaleRepository) : super([]) {
    loadFemales();
  }

  // 🧡 Load all Female Data
  void loadFemales() {
    state = femaleRepository.getAllFemales();
  }

  // 🧡 Add Female
  Future<void> addFemale(Female female) async {
    await femaleRepository.addFemale(female);
    // 🧡 Refresh state
    loadFemales();
  }

  // 🧡 Update Female
  Future<void> updateFemale(Female female) async {
    await femaleRepository.updateFemale(female);
    loadFemales();
  }

  // 🧡 Delete Female
  Future<void> deleteFemale(String id) async {
    await femaleRepository.deleteFemale(id);
    loadFemales();
  }
}

// 🧡 Riverpod Provider
final femaleProvider = StateNotifierProvider<FemaleNotifier, List<Female>>((ref) {
  return FemaleNotifier(FemaleRepository());
});
