import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar Demo"),
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 5.0,
          indicatorColor: Colors.orange,
          indicator: BoxDecoration(color: Colors.purple),
          labelColor: Colors.black,
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
            Text("1"),
            Text("Two"),
            Text("3"),
            Text("The Four"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text("1"),
          Text("Two"),
          Text("3"),
          Text("The Four"),
        ],
      ),
    );
  }
}
