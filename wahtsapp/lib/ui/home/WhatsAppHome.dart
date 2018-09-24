import 'package:flutter/material.dart';
import 'package:wahtsapp/ui/pages/calls.dart';
import 'package:wahtsapp/ui/pages/camera.dart';
import 'package:wahtsapp/ui/pages/chats.dart';
import 'package:wahtsapp/ui/pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            centerTitle: false,
            elevation: 0.7,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Text("CHATS")),
                Tab(icon: Text("STATUS")),
                Tab(icon: Text("CALLS")),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Camera(),
              Chats(),
              Status(),
              Calls(),
            ],
          )),
    );
  }
}
