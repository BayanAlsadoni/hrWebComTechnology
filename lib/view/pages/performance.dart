import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../add/add_departure.dart';
import '../add/add_performance.dart';
import '../add/add_promotion.dart';
import '../add/add_transfer.dart';
import '../add/add_travel.dart';
import '../details/departure_details.dart';
import '../details/ending_details.dart';
import '../details/meetings_details.dart';
import '../details/performance_detail.dart';
import '../details/promotion_detail.dart';
import '../details/transfer_detail.dart';
import '../details/travel_detaild.dart';

class PerformancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأداء'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
            AdvertizmentWidget(
                Icons.directions_walk_outlined, PerformanceDetails()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddPerformancePage();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
