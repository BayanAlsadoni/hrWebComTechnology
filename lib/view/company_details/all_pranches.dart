import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../details/advertizment_detail.dart';
import '../widgets/pranch_widget.dart';
import 'add_pranch.dart';

class AllPranchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('جميع الفروع'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PranchWidget('CILC001', 'Barbados', AdvertizmentDetails()),
            PranchWidget('CILC002', 'Grenada', AdvertizmentDetails()),
            PranchWidget('CILC003', 'Head Office', AdvertizmentDetails()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddPranchPage();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
