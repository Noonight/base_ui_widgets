import 'package:base_ui_widgets/home_page.dart';
import 'package:base_ui_widgets/sample_pages/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Base UI Widgets',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      theme: ThemeData(
          brightness: Brightness.light
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder> {
        '/sample-pages/first-page' : (BuildContext context) => const FirstPage(),
      },
    );
  }
}
