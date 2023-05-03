import 'package:flutter/material.dart';
import 'package:play_store/categories.dart';
import 'package:play_store/events.dart';
import 'package:play_store/fainal.dart';
import 'package:play_store/topcharts.dart';

import 'foryou.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => playstor(),
        '1': (context) => fainla(),
      },
    ),
  );
}

class playstor extends StatefulWidget {
  const playstor({Key? key}) : super(key: key);

  @override
  State<playstor> createState() => _playstorState();
}

class _playstorState extends State<playstor> with TickerProviderStateMixin {
  late TabController tabController;
  PageController pageController = PageController();

  int index = 0;

  List<Widget> pages = [
    foryou(),
    topcharts(),
    categories(),
    events(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            width: 400,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for apps & games',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.mic)),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green.shade400,
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.green,
              onTap: (val) {
                setState(() {
                  index = val;
                  pageController.animateToPage(val,
                      duration: Duration(milliseconds: 100),
                      curve: Curves.easeIn);
                });
              },
              tabs: <Tab>[
                Tab(
                  child: Text(
                    "For you",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Top Charts",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Events",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ]),
        ),
        body: PageView(
          controller: pageController,
          children: pages.map((e) => e).toList(),
          onPageChanged: (val) {
            setState(() {
              tabController.animateTo(val);
              index = val;
            });
          },
        ),
      ),
    );
  }
}
