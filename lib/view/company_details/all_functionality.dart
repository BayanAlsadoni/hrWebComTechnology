import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/company_details/user_roles.dart';

import '../pages/advertizment.dart';
import '../pages/departure.dart';
import '../pages/employees.dart';
import '../pages/endings.dart';
import '../pages/meetings.dart';
import '../pages/performance.dart';
import '../pages/promotion.dart';
import '../pages/transfer.dart';
import '../pages/travel.dart';
import '../widgets/home_widget.dart';
import 'all_departments.dart';
import 'all_designation.dart';
import 'all_pranches.dart';

class AllFunctionalityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('جميع الوظائف'),
        backgroundColor: Colors.redAccent,
      ),
      body: GridView(
        physics: NeverScrollableScrollPhysics(),
        // primary: false,
        // shrinkWrap: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            // crossAxisSpacing: 2,
            // mainAxisSpacing: 2,
            // mainAxisExtent: 100
            childAspectRatio: 1.2),
        children: [
          HomeWidget(
              'الإعلانات',
              //  Color.fromARGB(255, 242, 167, 161)
              //  ,
              Icon(
                Icons.campaign_rounded,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              AdvertismentPage()),
          HomeWidget(
              'الترقية',
              //  Color.fromARGB(255, 139, 225, 243)
              Icon(
                // Icons.meeting_room_sharp,
                // Icons.upgrade_rounded,
                Icons.trending_up_rounded,
                // Icons.upload_file,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              PromotionPage()),
          HomeWidget(
              'السفر',
              Icon(
                Icons.airplanemode_active,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              TravelPage()),
          HomeWidget(
              'الاستقالة',
              Icon(
                Icons.note,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              DeparturePage()),
          HomeWidget(
              'الاجتماعات',
              Icon(
                Icons.handshake,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              MeetingsPage()),
          HomeWidget(
              'الأداء',
              Icon(
                Icons.directions_walk_outlined,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              PerformancePage()),
          HomeWidget(
              'التحويل',
              Icon(
                Icons.repartition_rounded,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              TransferPage()),
          HomeWidget(
              'الانهاء',
              Icon(
                Icons.emoji_people_sharp,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              EndingsPage()),
          HomeWidget(
              'الموظفين',
              Icon(
                Icons.people_alt_rounded,
                color: Color.fromARGB(255, 249, 128, 128),
              ),
              EmployeesPage()),
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
          // HomeWidget(
          //     'دور المستخدم',
          //     Icon(
          //       // Icons.roofing_outlined,
          //       Icons.crop_portrait_sharp,
          //       color: Color.fromARGB(255, 249, 128, 128),
          //     ),
          //     UserRolesPage()),
        ],
      ),
    );
  }
}
