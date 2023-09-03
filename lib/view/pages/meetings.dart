import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/addMeetingPage.dart';
import '../add/add_advertizement.dart';
import '../details/advertizment_detail.dart';
import '../details/meetings_details.dart';

class MeetingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإجتماعات'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
            AdvertizmentWidget(Icons.handshake, MeetingsDetails()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddMeetingPage();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
