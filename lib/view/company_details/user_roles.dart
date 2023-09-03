import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/company_details/employee_roles.dart';
import 'package:web_com/view/company_details/primary_info.dart';

import '../widgets/home_widget.dart';
import 'hr_roles.dart';

class UserRolesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دور المستخدم'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Center(
        // padding: const EdgeInsets.all(15.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // physics: NeverScrollableScrollPhysics(),
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 10,
            //     mainAxisSpacing: 10,
            //     childAspectRatio: 1.5),
            children: [
              HomeWidget(
                  'Employee',
                  Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 249, 128, 128),
                  ),
                  EmployeeRoles()),
              HomeWidget(
                  'HR Manager',
                  Icon(
                    // Icons.perm_contact_cal_sharp,
                    // Icons.spatial_tracking_rounded,
                    Icons.laptop_mac_rounded,
                    color: Color.fromARGB(255, 249, 128, 128),
                  ),
                  HRManagerRoles()),
            ]),
      ),
    );
  }
}
