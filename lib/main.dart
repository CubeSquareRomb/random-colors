import 'package:flutter/material.dart';
import 'logic.dart';
import 'main_page.dart';

Future<void> main() async {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: MainPage(initialColor: getRandomColor()),
    );
  }
}