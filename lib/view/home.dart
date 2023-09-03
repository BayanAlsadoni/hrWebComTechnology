import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/pages/advertizment.dart';
import 'package:web_com/view/settings_page.dart';
import 'package:web_com/view/widgets/home_drawer.dart';
import 'package:web_com/view/widgets/home_widget.dart';

import 'details_page.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageCont = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebCom'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: HomeDrawer(),
      body: HomePage(),
    );
  }
}
