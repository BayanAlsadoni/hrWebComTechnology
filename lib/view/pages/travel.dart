import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../add/add_travel.dart';
import '../details/ending_details.dart';
import '../details/meetings_details.dart';
import '../details/travel_detaild.dart';

class TravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الرحلات'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
            AdvertizmentWidget(Icons.airplanemode_active, TravelDetails()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddTravelPage();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
