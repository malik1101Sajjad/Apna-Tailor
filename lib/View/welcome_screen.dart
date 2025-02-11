import 'package:apna_tailor/Controller/Export/export_file.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: CustomColor.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    Future.delayed(
      Duration(seconds: SizeConstants.animationDurationWelcomeScreen),
      () {
        if (mounted) {
          Navigator.pushNamedAndRemoveUntil(
              context, RoutesName.homeScreen, (route) => false);
        }
      },
    );
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: CustomColor.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(SizeConstants.marginLogoImgWelcomeScreen),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImgPath.logoImage),
            ),
          ),
          child: SpinKitFadingCircle(
            color: CustomColor.black,
            size: SizeConstants.spinKitFadingCircleWelcomeScreen,
          ),
        ),
      ),
    );
  }
}
