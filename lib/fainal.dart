import 'package:flutter/material.dart';

import 'global.dart';

class fainla extends StatefulWidget {
  const fainla({Key? key}) : super(key: key);

  @override
  State<fainla> createState() => _fainlaState();
}

class _fainlaState extends State<fainla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){Navigator.of(context).pop();},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          Icon(
            Icons.density_medium,
            color: Colors.black,
            size: 30,
          )
        ],
        backgroundColor: Colors.white.withOpacity(0.1),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white.withOpacity(0.1),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.network("${Global.deep}"),
                ),
                Padding(padding: EdgeInsets.only(left: 40)),
                Column(
                  children: [
                    Text(
                      "${Global.name}",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Contains ads , in app purchases",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(left: 5)),
                Column(
                  children: [
                    Text(
                      "${Global.sname}",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "999K reviews",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
                Container(
                  height: 35,
                  width: 2,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Text(
                      "5M+",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Downloads",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
                Container(
                  height: 35,
                  width: 2,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.e_mobiledata,
                    ),
                    Text(
                      "Everyone 🕛",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
              ],
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Install"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.green.shade700),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade400,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade200,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'About this game & app',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(padding: EdgeInsets.only(left: 110)),
                Icon(Icons.arrow_forward)
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  "Discover the Endless desert",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text("Action"),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text("Editor's choice"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Reviews & Ratings',
                  style: TextStyle(fontSize: 20),
                ),
                Padding(padding: EdgeInsets.only(left: 110)),
                Icon(Icons.arrow_forward)
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${Global.sname}",
                  style: TextStyle(fontSize: 50),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
