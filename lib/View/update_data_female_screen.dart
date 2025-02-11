import 'package:apna_tailor/Controller/Export/export_file.dart';

class UpdateDataFemaleScreen extends ConsumerStatefulWidget {
  const UpdateDataFemaleScreen({required this.female, super.key});
  final Female female;

  @override
  ConsumerState<UpdateDataFemaleScreen> createState() =>
      _UpdateDataFemaleScreenState();
}

class _UpdateDataFemaleScreenState
    extends ConsumerState<UpdateDataFemaleScreen> {
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
  void initState() {
    // 🧡 Populate controllers with existing data
    super.initState();
    nameController.text = widget.female.name;
    phoneController.text = widget.female.phone;
    lengthController.text = widget.female.length;
    armController.text = widget.female.arm;
    armRoundController.text = widget.female.armRound;
    shoulderController.text = widget.female.shoulder;
    chestController.text = widget.female.chest;
    waistController.text = widget.female.waist;
    hipsController.text = widget.female.hips;
    lapController.text = widget.female.lap;
    sideController.text = widget.female.side;
    neckController.text = widget.female.neck;
    pantController.text = widget.female.pant;
    painchaController.text = widget.female.paincha;
    pantWidthController.text = widget.female.pantWidth;
    additionalInfoController.text = widget.female.additionalInfo;
  }

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

  // 🧡 update Data Function
  void _updateData() {
    if (_formKey.currentState!.validate()) {
      // 🧡 Female Provider
      final femaleNotifier = ref.read(femaleProvider.notifier);

      // 🧡 Create Female Object
      final female = Female(
        id: widget.female.id,
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

      // 🧡 Update Female to Hive (via Riverpod)
      femaleNotifier.updateFemale(female);

      // 🧡 Show Snackbar Message
      CustomSnackBar.show(context, 'Female Measurement Update!');

      // 🧡 Close screen after update
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
                flex: 2,
                child: CustomScreenTitle(title: 'Update Measurement Female')),
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
                          hinttext: 'A R/بازوگولائ',
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
                          hinttext: 'P W/شلوارچوڑای',
                          controller: pantWidthController,
                        ),
                        // 🧡 aditional information field
                        CustomAdditionalInfoField(
                          hintText: 'Add Additional Information',
                          controller: additionalInfoController,
                        ),

                        // 🧡 button
                        Padding(
                          padding:  EdgeInsets.only(top: SizeConstants.buttonPaddingOutSide),
                          child: GestureDetector(
                            onTap: _updateData,
                            child: CustomButton(
                              title: 'UPDATE',
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
