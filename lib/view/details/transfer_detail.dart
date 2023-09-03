import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:web_com/view/widgets/custome_textfield.dart';

class TransferDetails extends StatelessWidget {
  TextEditingController txtEditCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("تفاصيل التحويل"),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomeTextFieldWidget('اسم الموظف',
                    enable: false,
                    txtController: TextEditingController(text: 'Gaza')),
                CustomeTextFieldWidget('الفروع',
                    enable: false,
                    txtController:
                        TextEditingController(text: 'my department')),
                CustomeTextFieldWidget('القسم',
                    enable: false,
                    txtController:
                        TextEditingController(text: 'employee 1, employee2')),
                CustomeTextFieldWidget('تاريخ التحويل',
                    enable: false,
                    txtController: TextEditingController(
                        text:
                            'this is addvertizment 1 in this monthe and bla bla bla'),
                    lines: 3),
                CustomeTextFieldWidget('الوصف',
                    enable: false,
                    txtController: TextEditingController(
                        text:
                            'this is addvertizment 1 in this monthe and bla bla bla'),
                    lines: 3),
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
