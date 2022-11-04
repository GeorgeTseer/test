import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Ex(
            text: '$index',
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 4,
            color: Colors.black,
          );
        },
      ),
    );
  }
}

class Ex extends StatefulWidget {
  final String text;
  const Ex({Key? key, required this.text}) : super(key: key);

  @override
  _ExState createState() => _ExState();
}

class _ExState extends State<Ex> with AutomaticKeepAliveClientMixin {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    print('1');
    return TextField(controller: controller);
  }

  @override
  bool get wantKeepAlive => true;
}
