import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/pages/advertizment.dart';
import 'package:web_com/view/pages/departure.dart';
import 'package:web_com/view/pages/employees.dart';
import 'package:web_com/view/pages/endings.dart';
import 'package:web_com/view/pages/meetings.dart';
import 'package:web_com/view/pages/performance.dart';
import 'package:web_com/view/pages/promotion.dart';
import 'package:web_com/view/pages/transfer.dart';
import 'package:web_com/view/pages/travel.dart';
import 'package:web_com/view/widgets/home_widget.dart';

import 'company_details/all_departments.dart';
import 'company_details/all_designation.dart';
import 'company_details/all_pranches.dart';
import 'company_details/primary_info.dart';
import 'company_details/user_roles.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          // Text('details'),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.5),
              children: [
                HomeWidget(
                    'المعلومات الأساسية',
                    Icon(
                      Icons.info_outline,
                      color: Color.fromARGB(255, 249, 128, 128),
                    ),
                    PrimaryInfoPage()),
                HomeWidget(
                    'الفروع',
                    Icon(
                      Icons.holiday_village_outlined,
                      color: Color.fromARGB(255, 249, 128, 128),
                    ),
                    AllPranchesPage()),
                HomeWidget(
                    'القسم',
                    Icon(
                      Icons.picture_in_picture_rounded,
                      color: Color.fromARGB(255, 249, 128, 128),
                    ),
                    AllDepartmentsPage()),
                HomeWidget(
                    'التعيين',
                    Icon(
                      Icons.note,
                      color: Color.fromARGB(255, 249, 128, 128),
                    ),
                    AllDesignationPage()),
                HomeWidget(
                    'دور المستخدم',
                    Icon(
                      // Icons.roofing_outlined,
                      Icons.crop_portrait_sharp,
                      color: Color.fromARGB(255, 249, 128, 128),
                    ),
                    UserRolesPage()),
                // HomeWidget(
                //     'إعدادات الاجازات',
                //     Icon(
                //       Icons.directions_walk_outlined,
                //       color: Color.fromARGB(255, 249, 128, 128),
                //     ),
                //     PerformancePage()),
                // HomeWidget(
                //     'سبب المغادرة',
                //     Icon(
                //       Icons.repartition_rounded,
                //       color: Color.fromARGB(255, 249, 128, 128),
                //     ),
                //     TransferPage()),
                // HomeWidget(
                //     'دور المستخدم',
                //     Icon(
                //       Icons.emoji_people_sharp,
                //       color: Color.fromARGB(255, 249, 128, 128),
                //     ),
                //     EndingsPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
