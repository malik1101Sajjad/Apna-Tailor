import 'package:apna_tailor/Controller/Export/export_file.dart';

class FemaleMeasureScreen extends ConsumerStatefulWidget {
  const FemaleMeasureScreen({super.key});

  @override
  ConsumerState<FemaleMeasureScreen> createState() =>
      _FemaleMeasureScreenState();
}

class _FemaleMeasureScreenState extends ConsumerState<FemaleMeasureScreen> {
  // 🧡 Global Key for Form Validation
  final _formKey = GlobalKey<FormState>();
  // 🧡 All TextEditingControllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController armController = TextEditingController();
  final TextEditingController armRoundController = TextEditingController();
  final TextEditingController shoulderController = TextEditingController();
  final TextEditingController chestController = TextEditingController();
  final TextEditingController waistController = TextEditingController();
  final TextEditingController hipsController = TextEditingController();
  final TextEditingController lapController = TextEditingController();
  final TextEditingController sideController = TextEditingController();
  final TextEditingController neckController = TextEditingController();
  final TextEditingController pantController = TextEditingController();
  final TextEditingController painchaController = TextEditingController();
  final TextEditingController pantWidthController = TextEditingController();
  final TextEditingController additionalInfoController =
      TextEditingController();

  @override
  void dispose() {
    // 🧡 Dispose controllers to prevent memory leaks
    nameController.dispose();
    phoneController.dispose();
    lengthController.dispose();
    armController.dispose();
    armRoundController.dispose();
    shoulderController.dispose();
    chestController.dispose();
    waistController.dispose();
    hipsController.dispose();
    lapController.dispose();
    sideController.dispose();
    neckController.dispose();
    pantController.dispose();
    painchaController.dispose();
    pantWidthController.dispose();
    additionalInfoController.dispose();
    super.dispose();
  }

  // 🧡 Save Data Function
  void _saveData() {
    if (_formKey.currentState!.validate()) {
      // 🧡 Female Provider
      final femaleNotifier = ref.read(femaleProvider.notifier);

      // 🧡 Generate Unique ID
      final String uniqueId = DateTime.now().millisecondsSinceEpoch.toString();

      // 🧡 Create Female Object
      final female = Female(
        id: uniqueId,
        name: nameController.text.trim(),
        phone: phoneController.text.trim(),
        length: lengthController.text.trim(),
        arm: armController.text.trim(),
        armRound: armRoundController.text.trim(),
        shoulder: shoulderController.text.trim(),
        chest: chestController.text.trim(),
        waist: waistController.text.trim(),
        hips: hipsController.text.trim(),
        lap: lapController.text.trim(),
        side: sideController.text.trim(),
        neck: neckController.text.trim(),
        pant: pantController.text.trim(),
        paincha: painchaController.text.trim(),
        pantWidth: pantWidthController.text.trim(),
        additionalInfo: additionalInfoController.text.trim(),
      );

      // 🧡 Add Female to Hive (via Riverpod)
      femaleNotifier.addFemale(female);

      // 🧡 Show Snackbar Message
      CustomSnackBar.show(context, 'Female Measurement Saved!');

      // 🧡 Clear Fields After Saving
      nameController.clear();
      phoneController.clear();
      lengthController.clear();
      armController.clear();
      armRoundController.clear();
      shoulderController.clear();
      chestController.clear();
      waistController.clear();
      hipsController.clear();
      lapController.clear();
      sideController.clear();
      neckController.clear();
      pantController.clear();
      painchaController.clear();
      pantWidthController.clear();
      additionalInfoController.clear();
      // 🧡 Close screen after add
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // 🧡 form key
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            // 🧡 title
            Expanded(
                flex: 2, child: CustomScreenTitle(title: 'Measurement Female')),
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
                            validator: 'Name required'),

                        // 🧡 phone
                        CustomTextFormField(
                            controller: phoneController,
                            hintText: 'Number/نمبر',
                            validator: 'Number required'),

                        // 🧡 other field
                        CustomRow(
                          hinttext: 'Length/لمبائی',
                          controller: lengthController,
                        ),
                        CustomRow(
                          hinttext: 'Arm/بازو',
                          controller: armController,
                        ),
                        CustomRow(
                          hinttext: 'Arm Round/بازوگولائ',
                          controller: armRoundController,
                        ),
                        CustomRow(
                          hinttext: 'Shoulder/تیرہ',
                          controller: shoulderController,
                        ),
                        CustomRow(
                          hinttext: 'Chest/چھاتی',
                          controller: chestController,
                        ),
                        CustomRow(
                          hinttext: 'Waist/کمر',
                          controller: waistController,
                        ),
                        CustomRow(
                          hinttext: 'Hips/کولہے',
                          controller: hipsController,
                        ),
                        CustomRow(
                          hinttext: 'Lap/دامن',
                          controller: lapController,
                        ),
                        CustomRow(
                          hinttext: 'Side/سائڈ',
                          controller: sideController,
                        ),
                        CustomRow(
                          hinttext: 'Neck/گلہ',
                          controller: neckController,
                        ),
                        CustomRow(
                          hinttext: 'Pant/شلوار',
                          controller: pantController,
                        ),
                        CustomRow(
                          hinttext: 'Paincha/پانچہ',
                          controller: painchaController,
                        ),
                        CustomRow(
                          hinttext: 'Pant Width/شلوارچوڑای',
                          controller: pantWidthController,
                        ),
                        // 🧡 aditional information field
                        CustomAdditionalInfoField(
                          hintText: 'Add Additional Information',
                          controller: additionalInfoController,
                        ),

                        // 🧡 button
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConstants.buttonPaddingOutSide),
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
