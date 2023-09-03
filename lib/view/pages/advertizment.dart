import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../details/advertizment_detail.dart';

class AdvertismentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإعلانات'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdvertizmentWidget(Icons.campaign_rounded, AdvertizmentDetails()),
            AdvertizmentWidget(Icons.campaign_rounded, AdvertizmentDetails()),
            AdvertizmentWidget(Icons.campaign_rounded, AdvertizmentDetails()),
            AdvertizmentWidget(Icons.campaign_rounded, AdvertizmentDetails()),
            AdvertizmentWidget(Icons.campaign_rounded, AdvertizmentDetails()),
            AdvertizmentWidget(Icons.campaign_rounded, AdvertizmentDetails()),
            AdvertizmentWidget(Icons.campaign_rounded, AdvertizmentDetails()),
            AdvertizmentWidget(Icons.campaign_rounded, AdvertizmentDetails()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddAdvertizementPage();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
