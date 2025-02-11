import 'package:apna_tailor/Controller/Export/export_file.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 🧡 Initialize Hive
  await Hive.initFlutter();
  // 🧡 register adapter
  Hive.registerAdapter(MaleAdapter());
  Hive.registerAdapter(FemaleAdapter());
  // 🧡 open Boxes
  await Hive.openBox<Male>('maleBox');
  await Hive.openBox<Female>('femaleBox');
  // 🧡 controll portrait mode
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    // 🧡 provider scope  using state management rivrerpod
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 🧡 using on generate route
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apna Tailor',
      initialRoute: RoutesName.welcomeScreen,
      onGenerateRoute: RoutesMethod.onGenerateRoute,
    );
  }
}
