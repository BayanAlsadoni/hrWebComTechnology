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

            // Container(
            //   padding: EdgeInsets.all(5),
            //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            //   decoration: BoxDecoration(
            //       color: Color.fromARGB(255, 234, 230, 230),
            //       borderRadius: BorderRadius.circular(10)),
            //   child: ListTile(
            //     // splashColor: Colors.amber,

            //     // contentPadding: EdgeInsets.all(10),
            //     title: Text('add1'),
            //     subtitle: Text(
            //         'this adverisment is for emploies company and is begin in 10AM'),
            //   ),
            // ),

            // Text('20/10/2023'),
            // Text('20/10/2023'),

            // Text('this adverisment is for emploies company and is begin in 10AM')
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
