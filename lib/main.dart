import 'package:flutter/material.dart';
import 'package:flutter_application_1/form_widget.dart';
import 'package:flutter_application_1/grid_view_soal.dart';
import 'package:flutter_application_1/halaman_2.dart';
import 'package:flutter_application_1/halaman_layout.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/list_view.dart';
import 'package:flutter_application_1/login/widget/floating_button_widget.dart';
import 'package:flutter_application_1/login/widget/text_widget.dart';
import 'package:flutter_application_1/routes_navigator.dart';

import 'halaman_1.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo aaaa',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: RoutesNavigator().home,
      routes: {
        RoutesNavigator().home: (_) => HalamanLayout(),
        RoutesNavigator().login: (_) => const HalamanLogin()
      },
      // home: FormWidget(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final int _counter = 4;

  void _incrementCounter(int counter) {
    setState(() {
      counter++;
    });
  }

  bool isHideButton = false;
  bool changeText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextWidget(
              isChangeText: changeText,
            ),
            Text("$_counter"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        isHide: isHideButton,
        onPressed: () {
          _incrementCounter(_counter);
          setState(() {
            isHideButton = !isHideButton;
            changeText = !changeText;
          });
        },
      ),
    );
  }
}
