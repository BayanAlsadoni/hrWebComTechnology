import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/custome_textfield.dart';

class AddPromotionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ترقية الموظف'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomeTextFieldWidget('الموظفين'),
              CustomeTextFieldWidget('التسمية القديمة'),
              CustomeTextFieldWidget('التسمية الجديدة'),
              CustomeTextFieldWidget('الراتب القديم'),
              CustomeTextFieldWidget('الراتب الجديد'),
              CustomeTextFieldWidget('عنوان الترقية'),
              CustomeTextFieldWidget('ترقية فعالة من تاريخ'),
              CustomeTextFieldWidget('الوصف'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      width: (MediaQuery.of(context).size.width / 2) - 15,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'إلغاء',
                            style: TextStyle(color: Colors.white),
                          ))),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      width: (MediaQuery.of(context).size.width / 2) - 15,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'حفظ',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
