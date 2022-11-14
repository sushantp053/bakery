import 'package:bakery/tabs/burger_tab.dart';
import 'package:bakery/tabs/donut_tab.dart';
import 'package:bakery/tabs/pancake_tab.dart';
import 'package:bakery/tabs/pizza_tab.dart';
import 'package:bakery/tabs/smoothie_tab.dart';
import 'package:bakery/utils/my_tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs =  const [
    MyTabs(iconPath: "lib/icons/donut.png"),
    MyTabs(iconPath: "lib/icons/burger.png"),
    MyTabs(iconPath: "lib/icons/pizza.png"),
    MyTabs(iconPath: "lib/icons/smoothie.png"),
    MyTabs(iconPath: "lib/icons/pancakes.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.grey[800],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "EAT",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ],
              ),
            ),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                PizzaTab(),
                SmoothieTab(),
                PancakeTab(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
