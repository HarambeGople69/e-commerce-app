import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/tabs/bags.dart';
import 'package:myapp/tabs/jackets.dart';
import 'package:myapp/tabs/new_arrival.dart';
import 'package:myapp/tabs/shoes.dart';
import 'package:myapp/tabs/tops.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> display = [
    NewArrival(),
    Jacket(),
    Shoes(),
    Bag(),
    Top(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "E-commerce",
            style: TextStyle(
                color: Colors.black, fontSize: ScreenUtil().setSp(25)),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            labelStyle:
                TextStyle(fontSize: ScreenUtil().setSp(15), color: Colors.red),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            isScrollable: true,
            tabs: [
              Tab(
                text: "New arrival",
              ),
              Tab(
                text: "Jackets",
              ),
              Tab(
                text: "Shoes",
              ),
              Tab(
                text: "Bags",
              ),
              Tab(
                text: "Tops",
              ),
            ],
          ),
        ),
        body: TabBarView(children: display),
      ),
    );
  }
}
