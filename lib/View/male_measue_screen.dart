import 'package:apna_tailor/Controller/Export/export_file.dart';

class MaleMeasueScreen extends ConsumerStatefulWidget {
  const MaleMeasueScreen({super.key});

  @override
  ConsumerState<MaleMeasueScreen> createState() => _MaleMeasueScreenState();
}

class _MaleMeasueScreenState extends ConsumerState<MaleMeasueScreen> {
  // 🧡 Global Key for Form Validation
  final _formKey = GlobalKey<FormState>();
  // 🧡 All TextEditingControllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController armController = TextEditingController();
  final TextEditingController shoulderController = TextEditingController();
  final TextEditingController collarController = TextEditingController();
  final TextEditingController chestController = TextEditingController();
  final TextEditingController lapController = TextEditingController();
  final TextEditingController pantController = TextEditingController();
  final TextEditingController painchaController = TextEditingController();
  final TextEditingController additionalInfoController =
      TextEditingController();

  @override
  void dispose() {
    // 🧡 Dispose controllers to prevent memory leaks
    nameController.dispose();
    phoneController.dispose();
    lengthController.dispose();
    armController.dispose();
    shoulderController.dispose();
    collarController.dispose();
    chestController.dispose();
    lapController.dispose();
    pantController.dispose();
    painchaController.dispose();
    additionalInfoController.dispose();
    super.dispose();
  }

  // 🧡 Save Data Function
  void _saveData() {
    if (_formKey.currentState!.validate()) {
      // 🧡 male provider
      final maleNotifier = ref.read(maleProvider.notifier);

      // 🧡 Generate Unique ID
      final String uniqueId = DateTime.now().millisecondsSinceEpoch.toString();

      // 🧡 Create Male Object
      final male = Male(
        id: uniqueId,
        name: nameController.text.trim(),
        phone: phoneController.text.trim(),
        length: lengthController.text.trim(),
        arm: armController.text.trim(),
        shoulder: shoulderController.text.trim(),
        collar: collarController.text.trim(),
        chest: chestController.text.trim(),
        lap: lapController.text.trim(),
        pant: pantController.text.trim(),
        paincha: painchaController.text.trim(),
        additionalInfo: additionalInfoController.text.trim(),
      );

      // 🧡 Add Male to Hive (via Riverpod)
      maleNotifier.addMale(male);

      // 🧡 Show Snackbar Message
      CustomSnackBar.show(context, 'Male Measurement Saved!');

      // 🧡 Clear Fields After Saving
      nameController.clear();
      phoneController.clear();
      lengthController.clear();
      armController.clear();
      shoulderController.clear();
      collarController.clear();
      chestController.clear();
      lapController.clear();
      pantController.clear();
      painchaController.clear();
      additionalInfoController.clear();
      // 🧡 Close screen after add
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      // 🧡 form key
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 🧡 title
            Expanded(
                flex: 2, child: CustomScreenTitle(title: 'Measurement Male')),
            Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: SizeConstants.columnPadding,
                    child: Column(
                      spacing: SizeConstants.columnSpecing,
                      children: [
                        // 🧡 name
                        CustomTextFormField(
                          controller: nameController,
                          hintText: 'Name/نام',
                          validator: 'Name required',
                        ),

                        // 🧡 phone
                        CustomTextFormField(
                          controller: phoneController,
                          hintText: 'Phone/نمبر',
                          validator: 'Phone required',
                        ),

                        // 🧡  other field
                        CustomRow(
                          hinttext: 'Length/لمبائی',
                          controller: lengthController,
                        ),
                        CustomRow(
                          hinttext: 'Arm/بازو',
                          controller: armController,
                        ),
                        CustomRow(
                          hinttext: 'Shoulder/تیرہ',
                          controller: shoulderController,
                        ),
                        CustomRow(
                          hinttext: 'Collar/کالر',
                          controller: collarController,
                        ),
                        CustomRow(
                          hinttext: 'Chest/چھاتی',
                          controller: chestController,
                        ),
                        CustomRow(
                          hinttext: 'Lap/دامن',
                          controller: lapController,
                        ),
                        CustomRow(
                          hinttext: 'Pant/شلوار',
                          controller: pantController,
                        ),
                        CustomRow(
                          hinttext: 'Paincha/پانچہ',
                          controller: painchaController,
                        ),
                        // 🧡 aditional information field
                        CustomAdditionalInfoField(
                          hintText: 'Add Additional Information',
                          controller: additionalInfoController,
                        ),

                        //🧡 button
                        Padding(
                          padding:  EdgeInsets.only(top: SizeConstants.buttonPaddingOutSide),
                          child: GestureDetector(
                            onTap: _saveData,
                            child: CustomButton(
                              title: 'SAVE',
                              margin: 0,
                              padding: SizeConstants.buttonPadding,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
