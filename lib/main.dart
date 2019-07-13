import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF3F5AA6),
            title: Text("Title text"),
          ),
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Container(child: Icon(Icons.directions_car)),
              Container(child: Icon(Icons.directions_transit)),
              Container(child: Icon(Icons.directions_bike))
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Color(0xFF3F5AA6),
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: "Transactions",
            icon: Icon(Icons.euro_symbol),
          ),
          Tab(
            text: "Bills",
            icon: Icon(Icons.assignment),
          ),
          Tab(
            text: "Balance",
            icon: Icon(Icons.account_balance_wallet),
          ),
        ],
      ),
    );
  }
}