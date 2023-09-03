import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../add/add_departure.dart';
import '../add/add_employee.dart';
import '../add/add_performance.dart';
import '../add/add_promotion.dart';
import '../add/add_transfer.dart';
import '../add/add_travel.dart';
import '../details/departure_details.dart';
import '../details/employee_detail.dart';
import '../details/ending_details.dart';
import '../details/meetings_details.dart';
import '../details/performance_detail.dart';
import '../details/promotion_detail.dart';
import '../details/transfer_detail.dart';
import '../details/travel_detaild.dart';

class EmployeesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الموظفين'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
            AdvertizmentWidget(Icons.people_alt_rounded, EmployeeDetails()),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //       return AddEmployeePage();
      //     }));
      //   },
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.redAccent,
      // ),
    );
  }
}
