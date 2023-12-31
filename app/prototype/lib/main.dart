import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prototype/services/dark_theme_prefs.dart';
import 'package:prototype/widget_tree.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'consts/theme_data.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  void callBack() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DarkThemePreferences().setCallback(callBack);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GameShare',
      theme: Styles.themeData(DarkThemePreferences().getTheme(), context),
      home: const WidgetTree(),
    );
  }
}
