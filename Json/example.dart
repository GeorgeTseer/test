import 'package:asd/address.dart';
import 'package:asd/human.dart';

final humans = [
  Human(
    name: 'Георг',
    surname: 'Цеер',
    age:  27,
    address: [
      Address(city: 'Moscow', street: 'Bauman', house: '13', flat: 1),
      Address(city: 'Moscow', street: 'Bauman', house: '13', flat: 2),
      Address(city: 'Moscow', street: 'Bauman', house: '13', flat: 3),
    ],
  ),

  Human(
    name: 'George',
    surname: 'Tseyer',
    age:  28,
    address: [
      Address(city: 'Dubai', street: 'Bauman', house: '13', flat: 1),
      Address(city: 'Dubai', street: 'Bauman', house: '13', flat: 2),
      Address(city: 'Dubai', street: 'Bauman', house: '13', flat: 3),
    ],
  ),
];

const jsonString = '''
 [
  {
    "name": "Георг",
    "surname": "Цеер",
    "age": 27,
    "address": [
      {
        "city": "Moscow",
        "street": "Bauman:,
        "house": "13",
        "flat": 1
      },
      {
        "city": "Moscow",
        "street": "Bauman:,
        "house": "13",
        "flat": 2
      },
      {
        "city": "Moscow",
        "street": "Bauman:,
        "house": "13",
        "flat": 3
      }
    ]
  },
  {
   "name": "George",
    "surname": "Tseyer",
    "age": 28,
    "address": [
      {
        "city": "Dubai",
        "street": "Bauman:,
        "house": "13",
        "flat": 1
      },
      {
        "city": "Dubai",
        "street": "Bauman:,
        "house": "13",
        "flat": 2
      },
      {
        "city": "Dubai",
        "street": "Bauman:,
        "house": "13",
        "flat": 3
      }
    ] 
  }
 ]
 ''';
