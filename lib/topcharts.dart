import 'package:flutter/material.dart';

import 'global.dart';

class topcharts extends StatefulWidget {
  const topcharts({Key? key}) : super(key: key);

  @override
  State<topcharts> createState() => _topchartsState();
}

class _topchartsState extends State<topcharts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: Global.topcharts
              .map((e) => Column(
                    children: [
                      ListTile(
                        leading: Image.network('${e['imeg']}'),
                        title: Text("${e['name']}"),
                        subtitle: Text("${e['reting']}"),
                      ),
                      Container(
                        height: 6,
                        color: Colors.grey.shade200,
                      )
                    ],
                  ))
              .toList()),
    );
  }
}
