import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Begpo'),
      centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            SvgPicture.asset('fonts/images/Group_42.svg',),
          ],
        ),
      ),
  );
}
