import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:web_app/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          FlexThemeData.light(useMaterial3: true, scheme: FlexScheme.mandyRed),
      // The Mandy red, dark theme.
      darkTheme:
          FlexThemeData.dark(useMaterial3: true, scheme: FlexScheme.mandyRed),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      // theme: ThemeData(
      //   useMaterial3: true,
      //   inputDecorationTheme: kDefaultInputDecorationTheme,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: HomeScreen(),
    );
  }
}
