import 'package:flutter/material.dart';
import 'package:play_store/topcharts.dart';

import 'global.dart';

class foryou extends StatefulWidget {
  const foryou({Key? key}) : super(key: key);

  @override
  State<foryou> createState() => _foryouState();
}

class _foryouState extends State<foryou> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white.withOpacity(0.1),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(7)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('Recommended for you'),
                Padding(padding: EdgeInsets.only(left: 180)),
                Icon(Icons.arrow_forward)
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: Global.foryou
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pushNamed(context, "1", arguments: e);
                            Global.deep = e['imeg'];
                            Global.name = e['name'];
                            Global.sname = e['reting'];
                          });
                        },
                        child: Container(
                          width: 125,
                          height: 160,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Column(
                            children: [
                              Hero(
                                tag: topcharts,
                                child: Container(
                                    width: 110,
                                    height: 110,
                                    child: Image.network('${e['imeg']}')),
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("${e['name']}"),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("${e['reting']}"),



                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    )
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('New & updated apps'),
                Padding(padding: EdgeInsets.only(left: 180)),
                Icon(Icons.arrow_forward)
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: Global.foryou2
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pushNamed(context, "1", arguments: e);
                            Global.deep = e['imeg'];
                            Global.name = e['name'];
                            Global.sname = e['reting'];
                          });
                        },
                        child: Container(
                          width: 125,
                          height: 160,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                  width: 110,
                                  height: 110,
                                  child: Image.network('${e['imeg']}')),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("${e['name']}"),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("${e['reting']}"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.ads_click,
                  color: Colors.green,
                ),
                Text('Suggested for you'),
                Padding(padding: EdgeInsets.only(left: 180)),
                Icon(Icons.arrow_forward)
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: Global.foryou3
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pushNamed(context, "1", arguments: e);
                            Global.deep = e['imeg'];
                            Global.name = e['name'];
                            Global.sname = e['reting'];
                          });
                        },
                        child: Container(
                          width: 125,
                          height: 160,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                  width: 110,
                                  height: 110,
                                  child: Image.network('${e['imeg']}')),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("${e['name']}"),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("${e['reting']}"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('Toold & utilities'),
                Padding(padding: EdgeInsets.only(left: 180)),
                Icon(Icons.arrow_forward)
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: Global.foryou4
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.pushNamed(context, "1", arguments: e);
                            Global.deep = e['imeg'];
                            Global.name = e['name'];
                            Global.sname = e['reting'];
                          });
                        },
                        child: Container(
                          width: 125,
                          height: 160,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                  width: 110,
                                  height: 110,
                                  child: Image.network('${e['imeg']}')),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("${e['name']}"),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("${e['reting']}"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
