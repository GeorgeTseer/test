
import 'dart:io';
  void main() async {
  print('H');
  final a = Future.delayed(Duration(seconds: 1)).whenComplete(() => print('please'));
  print('i');
  await method1();
  await method2();
}

method1() async {
  print('r');
  await method2();
  print('m');
}

method2(){
  print('e ');
  print(' ');  
}
  // final a = File('/Users/GeorgeTseyer/Downloads/file.txt').readAsString();
  // a.then((value) => print(value));

