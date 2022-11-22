import 'package:flutter/material.dart';

class ExampleAnimation extends StatelessWidget {
  const ExampleAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("second");
        },
        child: const Icon(Icons.next_plan_rounded),
      ),
      backgroundColor: Colors.blue,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Hero(
          tag: "George",
          child: Container(
            width: 120,
            height: 110,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}

class ExampleAnimationTwo extends StatelessWidget {
  const ExampleAnimationTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.next_plan_rounded),
      ),
      backgroundColor: Colors.red,
      body: Align(
        alignment: Alignment.bottomLeft,
        child: Hero(
          tag: "George",
          child: Container(
            width: 220,
            height: 190,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
