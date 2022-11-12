import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> FirstMenuRow = [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Чаты'),
  ];
  final List<MenuRowData> SecondMenuRow = [
    MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    MenuRowData(Icons.privacy_tip, 'Конфидициальность'),
    MenuRowData(Icons.date_range, 'Данные и память'),
    MenuRowData(Icons.language, 'Язык'),
  ];
  UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 5),
            _MenuWidget(menuRow: FirstMenuRow),
            SizedBox(height: 5),
            _MenuWidget(menuRow: SecondMenuRow),
          ],
        ),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;
  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('+71234567890');
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Jonny Sins',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30),
          _AvatarWidget(),
          SizedBox(height: 20),
          _UserNameWidget(),
          SizedBox(height: 30),
          _UserPhoneWidget(),
        ],
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
