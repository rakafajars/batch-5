import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman_2.dart';
import 'package:flutter_application_1/routes_navigator.dart';
import 'package:flutter_application_1/widget/app_bar_global.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanProfile extends StatelessWidget {
  const HalamanProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        elevation: 0,
        shadowColor: Colors.red,
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesNavigator().login);
              },
              icon: const Icon(
                Icons.abc,
              ),
            ),
          ],
        ),
      ),
      appBar: const PreferredSize(
        child: AppBarGlobal(
          title: 'Kelas A',
        ),
        preferredSize: Size.fromHeight(
          50,
        ),
      ),
      // body: Column(
      //   children: [
      //     // Container(
      //     //   height: 500,
      //     //   width: double.infinity,
      //     //   decoration: const BoxDecoration(
      //     //     color: Colors.amber,
      //     //     borderRadius: BorderRadius.only(
      //     //       bottomLeft: Radius.circular(84),
      //     //       bottomRight: Radius.circular(84),
      //     //     ),
      //     //   ),
      //     //   child: Row(
      //     //     children: [
      //     //       RichText(
      //     //         text: TextSpan(
      //     //           text: "Raka Fajar ",
      //     //           style: GoogleFonts.alatsi(
      //     //             color: Colors.black,
      //     //             fontSize: 42,
      //     //             fontWeight: FontWeight.w700,
      //     //           ),
      //     //           // style: TextStyle(
      //     //           //   color: Colors.black,
      //     //           //   fontSize: 42,
      //     //           //   fontWeight: FontWeight.w500,
      //     //           // ),
      //     //         ),
      //     //       ),
      //     //       Icon(Icons.abc)
      //     //     ],
      //     //   ),
      //     // ),
      //     // RichText(
      //     //   text: const TextSpan(
      //     //     text: "Raka Fajar ",
      //     //     style: TextStyle(
      //     //       color: Colors.black,
      //     //       fontSize: 42,
      //     //       fontWeight: FontWeight.w500,
      //     //     ),
      //     //     children: [
      //     //       TextSpan(
      //     //         text: "Salinggih",
      //     //         style: TextStyle(
      //     //           color: Colors.black,
      //     //           fontSize: 42,
      //     //           fontWeight: FontWeight.w700,
      //     //         ),
      //     //       )
      //     //     ],
      //     //   ),
      //     // ),
      //   ],
      // ),
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
