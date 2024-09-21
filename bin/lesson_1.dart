import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:lesson_1/lesson_1.dart';

void main(List<String> arguments) async {
  // print('lop1');
  // await Future.delayed(Duration(seconds: 2));
  // print('lop2');
  // delay();

  // print(await sortB([5, 4, 1, 3, 9, 1, 2]));
  print(disarium(135));
}

String disarium(int n) {
  int length = n.toString().length;
  int sum = 0;
  int nn = n;
  for (var i = 1; i <= length; i++) {
    int expon = (pow(10, length - i)).toInt();
    sum += pow(nn ~/ expon, i).toInt();
    nn %= expon;
  }
  return n == sum ? 'yes' : 'no';
}

Future<List<int>> sortB(List<int> array) async {
  await Future.delayed(Duration(seconds: 2));
  List<int> arraySorted = [];
  for (var i = array.length - 1; i >= 0; i--) {
    int min = array.elementAt(i);
    int index = i;

    for (int ii = array.length - 1; ii >= 0; ii--) {
      if (array.elementAt(ii) < min) {
        min = array.elementAt(ii);
        index = ii;
      }
    }

    arraySorted.add(min);
    array.removeAt(index);
  }
  return arraySorted;
}

Future<List<int>> sort(List<int> array) async {
  await Future.delayed(Duration(seconds: 2));
  for (var i = 0; i < array.length; i++) {
    int min = array.elementAt(i);
    int index = i;
    for (int ii = i; ii < array.length; ii++) {
      if (array.elementAt(ii) < min) {
        min = array.elementAt(ii);
        index = ii;
      }
    }
    array[index] = array[i];
    array[i] = min;
  }
  return array;
}

void sequence(int next, int last) {
  if (next == last) {
    print(next);
  } else {
    print(next);
    sequence(next + 1, last);
  }
}

void recurce(int n) {
  if (n > 1) {
    recurce(n - 1);
  }
  print(n);
}
