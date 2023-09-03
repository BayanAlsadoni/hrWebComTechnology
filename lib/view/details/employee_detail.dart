import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:web_com/view/widgets/custome_textfield.dart';

class EmployeeDetails extends StatelessWidget {
  TextEditingController txtEditCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("تفاصيل الموظف"),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomeTextFieldWidget('رقم الموظف',
                    enable: false,
                    txtController: TextEditingController(text: 'Gaza')),
                CustomeTextFieldWidget('الاسم',
                    enable: false,
                    txtController:
                        TextEditingController(text: 'my department')),
                CustomeTextFieldWidget('البريد الالكتروني',
                    enable: false,
                    txtController:
                        TextEditingController(text: 'employee 1, employee2')),
                CustomeTextFieldWidget(
                  'الفروع',
                  enable: false,
                  txtController: TextEditingController(
                      text:
                          'this is addvertizment 1 in this monthe and bla bla bla'),
                ),
                CustomeTextFieldWidget(
                  'القسم',
                  enable: false,
                  txtController: TextEditingController(
                      text:
                          'this is addvertizment 1 in this monthe and bla bla bla'),
                ),
                CustomeTextFieldWidget(
                  'التعيين',
                  enable: false,
                  txtController:
                      TextEditingController(text: 'inand bla bla bla'),
                ),
                CustomeTextFieldWidget('تاريخ الانضمام',
                    enable: false,
                    txtController: TextEditingController(text: '25-10-2023')),
                CustomeTextFieldWidget('الدور',
                    enable: false,
                    txtController: TextEditingController(text: '25-10-2023')),
                CustomeTextFieldWidget('إجراء',
                    enable: false,
                    txtController: TextEditingController(text: '25-10-2023')),
              ],
            ),
          ),
        ),
        floatingActionButton: SpeedDial(
          icon: Icons.menu,
          backgroundColor: Colors.redAccent,
          activeIcon: Icons.close,
          activeBackgroundColor: Colors.redAccent,
          visible: true,
          childMargin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          closeManually: false,
          curve: Curves.easeInOut,
          children: [
            SpeedDialChild(
              child: Icon(
                Icons.edit,
                color: Colors.redAccent,
              ),
              backgroundColor: Colors.white,
              label: 'تعديل',
              labelStyle: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontFamily: 'cairo',
              ),
              // onTap: () {
              //   _scrollController.animateTo(
              //     _scrollController.position.maxScrollExtent,
              //     duration: Duration(milliseconds: 500),
              //     curve: Curves.easeInOut,
              //   );
              // },
            ),
            SpeedDialChild(
              child: Icon(
                Icons.delete,
                color: Colors.redAccent,
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              label: 'حذف',
              labelStyle: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontFamily: 'cairo',
              ),
            ),
          ],
        ));
  }
}
