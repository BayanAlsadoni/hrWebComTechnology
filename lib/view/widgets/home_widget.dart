import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  String title;
  // Color color;
  Icon icon;
  Widget widget;
  HomeWidget(
      this.title,
      // this.color,
      this.icon,
      this.widget);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
      child: Container(
        // alignment: Alignment.center,
        height: 100,
        width: 150,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 237, 237),
          borderRadius: BorderRadius.circular(10),
          // border: Border.all()
        ),
        child:
            // Center(
            // child:
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.campaign_rounded),
            // Icon(Icons.meeting_room_sharp),
            // Icon(Icons.airplanemode_active),
            // Icon(Icons.people_alt_rounded),
            // Icon(Icons.person),
            icon,
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
          // ),
        ),
      ),
    );
  }
}
