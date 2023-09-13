import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/app_bar_global.dart';

class HalamanLogin extends StatelessWidget {
  const HalamanLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        child: AppBarGlobal(
          title: 'Kelas B',
        ),
        preferredSize: Size.fromHeight(
          50,
        ),
      ),
      body: const Column(
        children: [
          Text(
            'Raka Fajar Salinggih adasdasdada asdasdas adads adsad',
            style: TextStyle(
              color: Colors.red,
              decoration: TextDecoration.underline,
              fontSize: 14,
            ),
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.abc),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
