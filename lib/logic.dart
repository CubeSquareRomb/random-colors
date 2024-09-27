import 'dart:math';
import 'dart:ui';

Color getRandomColor() {
  Random random = Random();
  return Color.fromARGB(
    255, // This is the alpha channel, 255 for full opacity.
    random.nextInt(256), // Random red value between 0 and 255.
    random.nextInt(256), // Random green value between 0 and 255.
    random.nextInt(256), // Random blue value between 0 and 255.
  );
}

String RGBtoHEX(Color color) {
  String hexString = color.value.toRadixString(16);
  hexString = hexString.substring(2, hexString.length);
  hexString = '#$hexString';

  return hexString;
}

Color getRandomSaturatedColor() {
  Random random = Random();
  int randomizedCanal = random.nextInt(3);
  int canal255 = random.nextInt(2);

  int r = 0;
  int g = 0;
  int b = 0;

  if (randomizedCanal == 0) {
    r = random.nextInt(256);
    if (canal255 == 0) {
      g = 255;
      b = 0;
    } else {
      g = 0;
      b = 255;
    }
  }

  if (randomizedCanal == 1) {
    g = random.nextInt(256);
    if (canal255 == 0) {
      r = 255;
      b = 0;
    } else {
      r = 0;
      b = 255;
    }
  }

  if (randomizedCanal == 2) {
    b = random.nextInt(256);
    if (canal255 == 0) {
      r = 255;
      g = 0;
    } else {
      r = 0;
      g = 255;
    }
  }

  return Color.fromARGB(255, r, g, b);
}

Color getRandomGray() {
  Random random = Random();

  int gray = random.nextInt(255);

  return Color.fromARGB(255, gray, gray, gray);
}

String RGBformat(Color color) {
  return '(${color.red}, ${color.green}, ${color.blue})';
}

List<Color> convertColorList(List<Map<String, dynamic>> colors) {
  List<Color> result = [];
  int r = 0;
  int g = 0;
  int b = 0;

  for (Map<String, dynamic> i in colors) {
    r = i['r'];
    g = i['g'];
    b = i['b'];

    result.add(Color.fromARGB(255, r, g, b));
  }

  return result;
}