import 'package:flutter/material.dart';

class AppBarGlobal extends StatelessWidget {
  final String title;

  const AppBarGlobal({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      title: GestureDetector(
        onDoubleTap: () {
          print('DiTekan');
        },
        child: Text(
          title,
        ),
      ),
      elevation: 0,
      leading: InkWell(
        onDoubleTap: () {
          print('DiTekan');
        },
        child: const Icon(
          Icons.people,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.account_balance_sharp),
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        const Icon(
          Icons.message,
        ),
        const SizedBox(width: 10),
        const Icon(
          Icons.ac_unit_outlined,
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
