import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../details/advertizment_detail.dart';
import '../widgets/pranch_widget.dart';
import 'add_pranch.dart';

class AllDesignationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('جميع التعينات'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PranchWidget('HR Admin', 'A', AdvertizmentDetails()),
            PranchWidget('HR Manager', '2', AdvertizmentDetails()),
            PranchWidget('Managing Director', '1', AdvertizmentDetails()),
            PranchWidget('Marketing Officer', 'B', AdvertizmentDetails()),
            PranchWidget(
                'Sales&Marketing Associate', '3', AdvertizmentDetails()),
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
