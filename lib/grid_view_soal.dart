import 'package:flutter/material.dart';

class GridViewSoal extends StatelessWidget {
  GridViewSoal({super.key});

  List<Widget> listIcon = [
    Icon(Icons.abc),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ads_click),
    Icon(Icons.access_alarm_sharp),
    Icon(Icons.arrow_back),
    Icon(Icons.abc),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ads_click),
    Icon(Icons.access_alarm_sharp),
    Icon(Icons.arrow_back),
    Icon(Icons.abc),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ads_click),
    Icon(Icons.access_alarm_sharp),
    Icon(Icons.arrow_back),
    Icon(Icons.abc),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ads_click),
    Icon(Icons.access_alarm_sharp),
    Icon(Icons.arrow_back),
    Icon(Icons.abc),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ads_click),
    Icon(Icons.access_alarm_sharp),
    Icon(Icons.arrow_back),
  ];

  @override
  Widget build(BuildContext context) {
    /*24 is for notification bar on Android*/
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'GridView',
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: (itemWidth / itemHeight),
        ),
        itemCount: listIcon.length,
        itemBuilder: (context, index) {
          return CircleAvatar(
            backgroundColor: Colors.blue,
            child: listIcon[index],
          );
          // return Container(
          //   decoration: const BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.blue,
          //   ),
          //   child: listIcon[index],
          // );
        },
      ),
    );
  }
}
