import 'dart:io';
import 'dart:convert';

import 'dart:math';

void main() {
  final set1 = {1, 2, 3};
  final set2 = {1, 3, 4};
  final result = set2.difference(set1);
  final ress = set1.union(set2);
  print('$result $ress');

  // while (true) {
  //   print("How are you?");
  //   final hey = stdin.readLineSync();
  //   print("Im $hey too");
  // }

  final listOfInt = [2, 3, 4, 5, 6];
  for (final i in listOfInt.asMap().entries) {
    print('${i.key}, ${i.value}');
  }
  for (var iindex = 0; iindex < listOfInt.length; iindex++) {
    if (listOfInt[iindex] % 2 == 0) {
      listOfInt[iindex] -= 2;
    }
  }
  print(listOfInt);

  for (var i = 0; i < listOfInt.length; i++) {
    print('$i, ${listOfInt[i]}');
  }
}
