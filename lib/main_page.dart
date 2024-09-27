import 'package:flutter/material.dart';

import 'color_box.dart';
import 'logic.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.initialColor});
  final Color initialColor;

  @override
  State<MainPage> createState() => _MainPageState(initialColor);
}

class _MainPageState extends State<MainPage> {
  _MainPageState(this.color);

  Color color;
  String _dropdownValue = 'Any color';

  // @override
  // void initState() {
  //   super.initState();
  // }

  void _generateColor() {
    setState(() {
      switch (_dropdownValue) {
        case ('Any color') : {
          color = getRandomColor();
        } case ('Saturated color') : {
        color = getRandomSaturatedColor();
      } case ('Gray') : {
        color = getRandomGray();
      }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Random Colors"),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorBox(color: color),
            DropdownButton<String>(
              value: _dropdownValue,
              items: <String>['Any color', 'Saturated color', 'Gray'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _dropdownValue = newValue!;
                });
              },
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _generateColor,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
