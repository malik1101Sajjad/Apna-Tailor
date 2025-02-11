import 'package:apna_tailor/Controller/Export/export_file.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.white,
        body: Column(
          children: [
            // title widget
            Expanded(
              flex: 2,
              child: CustomScreenTitle(title: 'Create New List'),
            ),

            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // male image
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RoutesName.maleMeasueScreen);
                        },
                        child: CustomImage(
                          imgUrl: ImgPath.maleImg,
                          title: 'Male',
                        )),
                  ),
                  // female image
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RoutesName.femaleMeasureScreen);
                        },
                        child: CustomImage(
                          imgUrl: ImgPath.femaleImg,
                          title: 'Female',
                        )),
                  ),
                ],
              ),
            ),
            Expanded(flex: 2, child: SizedBox()),
            // button
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.viewDataScreen);
                },
                child: CustomButton(
                  title: 'View List',
                  margin: SizeConstants.buttonMargin,
                  padding: 0,
                ),
              ),
            ),
            Expanded(flex: 1, child: SizedBox()),
          ],
        ));
  }
}
