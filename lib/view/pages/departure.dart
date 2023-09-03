import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../add/add_departure.dart';
import '../add/add_travel.dart';
import '../details/departure_details.dart';
import '../details/ending_details.dart';
import '../details/meetings_details.dart';
import '../details/travel_detaild.dart';

class DeparturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاستقالات'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
            AdvertizmentWidget(Icons.note, DepartureDetails()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddDeparturePage();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
