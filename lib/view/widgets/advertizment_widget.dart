import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/details/advertizment_detail.dart';

class AdvertizmentWidget extends StatelessWidget {
  IconData iconData;
  Widget pageToGo;
  AdvertizmentWidget(this.iconData, this.pageToGo);
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // SizedBox(
        //   width: 10,
        // ),
        // Icon(
        //   Icons.campaign_rounded,
        //   // color: Color.fromARGB(255, 249, 128, 128),
        //   color: Color.fromARGB(255, 142, 142, 142),
        // ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return pageToGo;
              }));
            },
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 239, 239),
                  // color: Color.fromARGB(255, 193, 83, 83),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Row(children: [
                  Icon(
                      // Icons.campaign_rounded,
                      iconData
                      // color: Color.fromARGB(255, 249, 128, 128),
                      ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('add1')
                ]),
                subtitle: Text(
                    'this adverisment is for emploies company and is begin in 10AM'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
