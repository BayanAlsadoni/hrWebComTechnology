import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../details/advertizment_detail.dart';
import '../widgets/custome_textfield.dart';
import '../widgets/department_widget.dart';
import '../widgets/pranch_widget.dart';
import 'add_pranch.dart';

class AllDepartmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('جميع الأقسام'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DepartmentWidget('Customer Journey Enhancement', '	Grenada',
                AdvertizmentDetails()),
            DepartmentWidget('Human Resource Management', '	Head Office',
                AdvertizmentDetails()),
            DepartmentWidget('Information & Communications Techonolog (ICT)	',
                '	Barbados', AdvertizmentDetails()),
            DepartmentWidget('Managing Directors Office', '	Barbados',
                AdvertizmentDetails()),
            DepartmentWidget(
                'Marketing & Sales', '	Grenada', AdvertizmentDetails()),
            DepartmentWidget('Organization Development Support', '	Barbados',
                AdvertizmentDetails()),
            DepartmentWidget('Team Engagement & Retention', '	Barbados',
                AdvertizmentDetails()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomeTextFieldWidget('قسم'),
                      CustomeTextFieldWidget('الاسم'),
                    ],
                  ),
                  actionsAlignment: MainAxisAlignment.center,
                  actions: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Text('حفظ'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.redAccent),
                        )),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('إغلاق'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey)),
                    )
                  ],
                );
              });

          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //   return AddPranchPage();
          // }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
