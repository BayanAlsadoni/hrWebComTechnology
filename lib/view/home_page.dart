import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/pages/departure.dart';
import 'package:web_com/view/pages/employees.dart';
import 'package:web_com/view/pages/endings.dart';
import 'package:web_com/view/pages/performance.dart';
import 'package:web_com/view/pages/promotion.dart';
import 'package:web_com/view/pages/transfer.dart';
import 'package:web_com/view/pages/travel.dart';
import 'package:web_com/view/widgets/home_widget.dart';

import 'company_details/all_functionality.dart';
import 'pages/advertizment.dart';
import 'pages/meetings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 100,
            child: PageView(
              children: [
                Container(
                  width: 300,
                  height: 70,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.person),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('مجموع الموظفين'), Text('2')],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 80,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.directions_run_rounded),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('الموظفين المغادرين'), Text('0')],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 80,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(Icons.transfer_within_a_station),
                      // Icon(Icons.phonelink_sharp),
                      Icon(Icons.laptop_chromebook_rounded),
                      // Icon(Icons.airline_seat_recline_normal_rounded),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('الموظفين المتواجدين'), Text('0')],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView(
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
                    'المزيد',
                    Icon(
                      Icons.more_horiz,
                      color: Color.fromARGB(255, 249, 128, 128),
                    ),
                    AllFunctionalityPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
