import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffoldkey,
          appBar: AppBar(
            title: Text("TabBar"),
            bottom: TabBar(tabs: [
              Tab(
                child: Text("Laptop"),
              ),
              Tab(
                child: Text("Mopil"),
              ),
              Tab(
                child: Text("Pc"),
              )
            ]),
          ),
          body: Container(
              padding: EdgeInsets.all(10),
              child: TabBarView(
                children: [
                  Text("Laptop page"),
                  Text("Mopil page"),
                  Text("Pc Page")
                ],
              )),
        ),
      ),
    );
  }
}
