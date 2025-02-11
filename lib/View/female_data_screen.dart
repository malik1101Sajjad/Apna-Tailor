import 'package:apna_tailor/Controller/Export/export_file.dart';

// 🌟 Provider to Manage Search Query female
final femaleSearchQueryProvider = StateProvider<String>((ref) => "");

class FemaleDataScreen extends ConsumerStatefulWidget {
  const FemaleDataScreen({super.key});

  @override
  ConsumerState<FemaleDataScreen> createState() => _FemaleDataScreenState();
}

class _FemaleDataScreenState extends ConsumerState<FemaleDataScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(femaleSearchQueryProvider.notifier).state = "";
      _searchController.clear();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // 🛠 Show Delete Confirmation Dialog
  void _showDeleteDialog(BuildContext context, WidgetRef ref, String femaleId) {
    CustomDialog.showDeleteDialog(
      context: context,
      onConfirm: () {
        ref.read(femaleProvider.notifier).deleteFemale(femaleId);
        CustomSnackBar.show(context, "Delete Data Successfully!");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final femaleList = ref.watch(femaleProvider);
    final searchQuery = ref.watch(femaleSearchQueryProvider);
    // 🔍 Filtered List
    final filteredList = femaleList.where((female) {
      final nameMatch =
          female.name.toLowerCase().contains(searchQuery.toLowerCase());
      final phoneMatch =
          female.phone.toLowerCase().contains(searchQuery.toLowerCase());
      return nameMatch || phoneMatch;
    }).toList();

    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Column(
        children: [
          CustomSearchBar(
            controller: _searchController,
            onChanged: (value) {
              ref.read(femaleSearchQueryProvider.notifier).state = value.trim();
            },
          ),
          Expanded(
            child: filteredList.isEmpty
                ? Center(
                    child: Text('No Female Data',
                        style: TextStyle(
                            color: CustomColor.grey, fontWeight: FontWeight.bold)),
                  )
                : ListView.builder(
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final female = filteredList[index];
                      return CustomListItem(
                        name: female.name,
                        phone: female.phone,
                        onTap: () {
                          Navigator.pushNamed(
                              context, RoutesName.detailsFemaleScreen,
                              arguments: female);
                        },
                        onUpdate: () {
                          Navigator.pushNamed(
                              context, RoutesName.updateDataFemaleScreen,
                              arguments: female);
                        },
                        onDelete: () {
                          _showDeleteDialog(context, ref, female.id);
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
