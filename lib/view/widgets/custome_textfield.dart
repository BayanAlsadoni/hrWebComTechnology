import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeTextFieldWidget extends StatelessWidget {
  String text;
  bool enable;
  int lines;
  Icon? icon;
  TextEditingController? txtController;
  CustomeTextFieldWidget(this.text,
      {this.enable = true, this.txtController, this.lines = 1, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            text,
            textAlign: TextAlign.right,
          ),
          Container(
            // margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.black54)),
            child: TextField(
              textAlign: TextAlign.right,
              maxLines: lines,
              controller: txtController,
              enabled: enable,
              decoration: InputDecoration(icon: icon, border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
