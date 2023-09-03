import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custome_textfield.dart';

class PrimaryInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المعلومات الأساسية'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomeTextFieldWidget('اسم الشركة',
                  enable: false,
                  txtController:
                      TextEditingController(text: 'ًWebComTechnology')),
              CustomeTextFieldWidget('وقت بدء الشركة',
                  enable: false,
                  txtController: TextEditingController(text: '8:00 AM')),
              CustomeTextFieldWidget('عنوان الموقع',
                  enable: false,
                  txtController: TextEditingController(text: 'www.WebComp.ps')),
              CustomeTextFieldWidget('المنطقة الزمنية',
                  enable: false,
                  txtController: TextEditingController(text: 'Asia,Gaza')),
              CustomeTextFieldWidget('المدة بالساعات',
                  enable: false,
                  txtController: TextEditingController(text: '8')),
            ],
          ),
        ),
      ),
    );
  }
}
