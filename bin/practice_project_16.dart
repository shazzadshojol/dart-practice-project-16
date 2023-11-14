// ignore_for_file: dead_code

import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  String randomNumber = (1000 + random.nextInt(9999 - 1000)).toString();
  print(randomNumber);
  print('welcome to the game\nOr type exit to end');

  int attemps = 0;

  while (true) {
    int cow = 0;
    int bull = 0;
    attemps += 1;

    print('Choose a four degit number');
    String chooseNumber = stdin.readLineSync()!;

    if (chooseNumber == randomNumber) {
      print('Hurry! You got it.');
      break;
    } else if (chooseNumber == 'exit') {
      print('buy! buy!');
      break;
    } else if (chooseNumber.length != randomNumber.length) {
      print('Please choose correct formet');
      continue;
    }

    for (var i = 0; i < randomNumber.length; i++) {
      if (chooseNumber[i] == randomNumber[i]) {
        cow += 1;
      } else if (randomNumber.contains(chooseNumber[i])) {
        bull += 1;
      }
    }
    print('\nYou did $attemps attempts.\nCow: $cow\nBull: $bull');
  }
}
