import 'package:apna_tailor/Controller/Export/export_file.dart';


// 🧡 Provider to Manage Search Query male
final maleSearchQueryProvider = StateProvider<String>((ref) => "");

class MaleDataScreen extends ConsumerStatefulWidget {
  const MaleDataScreen({super.key});

  @override
  ConsumerState<MaleDataScreen> createState() => _MaleDataScreenState();
}

class _MaleDataScreenState extends ConsumerState<MaleDataScreen> {
  // 🧡 controller
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    // 🧡 reset screen
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(maleSearchQueryProvider.notifier).state = "";
      _searchController.clear();
    });
  }

  @override
  void dispose() {
    // 🧡 Dispose controllers to prevent memory leaks
    _searchController.dispose();
    super.dispose();
  }

  // 🧡 Show Delete Confirmation Dialog
  void _showDeleteDialog(BuildContext context, WidgetRef ref, String maleId) {
    CustomDialog.showDeleteDialog(
      context: context,
      onConfirm: () {
        ref.read(maleProvider.notifier).deleteMale(maleId);
        CustomSnackBar.show(context, "Delete Data Successfully!");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final maleList = ref.watch(maleProvider);
    final searchQuery = ref.watch(maleSearchQueryProvider);

    // 🧡 Filtered List
    final filteredList = maleList.where((male) {
      final nameMatch =
          male.name.toLowerCase().contains(searchQuery.toLowerCase());
      final phoneMatch =
          male.phone.toLowerCase().contains(searchQuery.toLowerCase());
      return nameMatch || phoneMatch;
    }).toList();
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Column(
        children: [
          // 🧡 search bar
          CustomSearchBar(
            controller: _searchController,
            onChanged: (value) {
              ref.read(maleSearchQueryProvider.notifier).state = value.trim();
            },
          ),
          Expanded(
            child: filteredList.isEmpty
                ? Center(
                    child: AutoSizeText('No Male Data',
                        style: TextStyle(
                            color:CustomColor.grey, fontWeight: FontWeight.bold)),
                  )
                : ListView.builder(
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final male = filteredList[index];
                      return CustomListItem(
                        name: male.name,
                        phone: male.phone,
                        onTap: () {
                          Navigator.pushNamed(
                              context, RoutesName.detailsMaleScreen,
                              arguments: male);
                        },
                        onUpdate: () {
                          Navigator.pushNamed(
                              context, RoutesName.updateDataMaleScreen,
                              arguments: male);
                        },
                        onDelete: () {
                          _showDeleteDialog(context, ref, male.id);
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
