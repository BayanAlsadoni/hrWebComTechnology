import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/details/advertizment_detail.dart';

class DepartmentWidget extends StatelessWidget {
  // IconData iconData;
  Widget pageToGo;
  String text1;
  String text2;

  DepartmentWidget(this.text1, this.text2, this.pageToGo);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
          
            },
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 239, 239),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 220,
                      child: Text(
                        text1,
                        maxLines: 3,
                      ),
                    ),
                    // Text(text2),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              size: 18,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              size: 18,
                            ))
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
