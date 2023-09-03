import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:web_com/view/widgets/custome_textfield.dart';

class MeetingsDetails extends StatelessWidget {
  TextEditingController txtEditCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("تفاصيل الإجتماع"),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomeTextFieldWidget('عنوان الإجتماع',
                    enable: false,
                    txtController: TextEditingController(text: 'Gaza')),
                CustomeTextFieldWidget('الوصف',
                    enable: false,
                    txtController:
                        TextEditingController(text: 'my department')),
                CustomeTextFieldWidget('تاريخ الاجتماع',
                    enable: false,
                    txtController:
                        TextEditingController(text: 'employee 1, employee2')),
                CustomeTextFieldWidget('وقت الاجتماع',
                    enable: false,
                    txtController:
                        TextEditingController(text: 'addvertizment1')),
                CustomeTextFieldWidget('الموظفين',
                    enable: false,
                    txtController: TextEditingController(text: '20-10-2023')),
                CustomeTextFieldWidget('إجراء',
                    enable: false,
                    txtController: TextEditingController(text: '25-10-2023')),
                CustomeTextFieldWidget('الوصف',
                    enable: false,
                    txtController: TextEditingController(
                        text:
                            'this is addvertizment 1 in this monthe and bla bla bla'),
                    lines: 3),
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
              // onTap: () {
              //   _scrollController.animateTo(
              //     _scrollController.position.maxScrollExtent,
              //     duration: Duration(milliseconds: 500),
              //     curve: Curves.easeInOut,
              //   );
              // },
            ),
          ],
        ));
  }
}
