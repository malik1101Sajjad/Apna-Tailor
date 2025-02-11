import 'package:apna_tailor/Controller/Export/export_file.dart';


// 🧡 routes method
class RoutesMethod {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.welcomeScreen:
        return MaterialPageRoute(builder: (context) => WelcomeScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.maleMeasueScreen:
        return MaterialPageRoute(builder: (context) => MaleMeasueScreen());
      case RoutesName.femaleMeasureScreen:
        return MaterialPageRoute(builder: (context) => FemaleMeasureScreen());
      case RoutesName.viewDataScreen:
        return MaterialPageRoute(builder: (context) => ViewDataScreen());
      // 🧡 details routes screen
      case RoutesName.detailsMaleScreen:
        if (settings.arguments is Male) {
          final male = settings.arguments as Male;
          return MaterialPageRoute(
              builder: (context) => DetailsMaleDataScreen(male: male));
        }
      case RoutesName.detailsFemaleScreen:
        if (settings.arguments is Female) {
          final female = settings.arguments as Female;

          return MaterialPageRoute(
              builder: (context) => DetailsFemaleDataScreen(female: female));
        }
      // 🧡 update routes screen
      case RoutesName.updateDataMaleScreen:
        if (settings.arguments is Male) {
          final male = settings.arguments as Male;

          return MaterialPageRoute(
              builder: (context) => UpdateDataMaleScreen(male: male));
        }
      case RoutesName.updateDataFemaleScreen:
        if (settings.arguments is Female) {
          final female = settings.arguments as Female;

          return MaterialPageRoute(
              builder: (context) => UpdateDataFemaleScreen(female: female));
        }
    }
    // 🧡 Page Not Found
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text("Page Not Found."),
        ),
      ),
    );
  }
}
