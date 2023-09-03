import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../details/ending_details.dart';
import '../details/meetings_details.dart';

class EndingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإنهاءات'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
            AdvertizmentWidget(Icons.emoji_people_sharp, EndingDetails()),
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
