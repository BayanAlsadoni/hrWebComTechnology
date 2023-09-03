import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/custome_textfield.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            // CustomeTextFieldWidget('',
            //     icon: Icon(Icons.person_2),
            //     txtController: TextEditingController(text: 'Email',))

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border:
                      Border.all(color: Colors.redAccent.shade100, width: 2)),
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    hintText: 'Email',
                    icon: Icon(
                      Icons.person,
                      color: Colors.redAccent.shade100,
                    ),
                    border: InputBorder.none),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border:
                      Border.all(color: Colors.redAccent.shade100, width: 2)),
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(
                      Icons.person,
                      color: Colors.redAccent.shade100,
                    ),
                    border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
