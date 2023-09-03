import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_com/view/pages/advertizment.dart';
import 'package:web_com/view/settings_page.dart';
import 'package:web_com/view/widgets/home_drawer.dart';
import 'package:web_com/view/widgets/home_widget.dart';

import 'details_page.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageCont = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebCom'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: HomeDrawer(),
      body: HomePage(),
      //  PageView(
      //   onPageChanged: (value) {
      //     index = value;
      //     setState(() {});
      //   },
      //   controller: pageCont,
      //   children: [
      //     HomePage(),
      //     DetailsPage(),
      //     SettingsPage(),
      //   ],
      // ),
      // bottomNavigationBar:
      //     // Theme(
      //     //   data: Theme.of(context).copyWith(
      //     //       // canvasColor: Color.fromRGBO(255, 255, 255, 0),
      //     //       // primaryColor: Colors.red,
      //     //       // textTheme: Theme.of(context)
      //     //       //     .textTheme
      //     //       //     .copyWith(caption: TextStyle(color: Colors.white)
      //     //       // )
      //     //     ),
      //     // child:
      //     Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 40),
      //   child: BottomNavigationBar(
      //       onTap: (value) {
      //         // index = value;
      //         pageCont.animateToPage(
      //           value,
      //           curve: Curves.bounceOut,
      //           duration: Duration(seconds: 2),
      //         );
      //         // pageCont.animateToPage(curve: null, duration: null,);
      //         setState(() {});
      //       },
      //       currentIndex: index,
      //       // backgroundColor: Colors.transparent,
      //       selectedItemColor: Colors.redAccent,
      //       unselectedItemColor: Colors.black,
      //       elevation: 0,
      //       // landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      //       // type: BottomNavigationBarType.shifting,

      //       items: [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'home',
      //         ),
      //         BottomNavigationBarItem(
      //             icon: Icon(Icons.density_small_outlined), label: 'details'),
      //         BottomNavigationBarItem(
      //             icon: Icon(Icons.settings), label: 'settings'),
      //       ]),
      // ),

      // // )
    );
  }
}

//     SingleChildScrollView(
//   child: Column(
//     children: [
//       ListTile(
//         title: Text('الإعلانات'),
//         trailing: Icon(Icons.campaign_rounded),
//         onTap: () {
//           Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) {
//             return AdvertismentPage();
//           }));
//         },
//         // style: ListTileStyle.drawer,
//         // style: ListTileStyle.list,
//       ),
//       Divider(),
//       ListTile(
//         title: Text('الترقية'),
//         trailing: Icon(Icons.meeting_room_sharp),
//       ),
//       Divider(),
//       ListTile(
//         title: Text('السفر'),
//         trailing: Icon(Icons.airplanemode_active),
//       ),
//       Divider(),
//       ListTile(
//         title: Text('الاستقالة'),
//         trailing: Icon(Icons.people_alt_rounded),
//       ),
//       Divider(),
//       ListTile(
//         title: Text('الاجتماعات'),
//         trailing: Icon(Icons.person),
//       ),
//       Divider(),
//       ListTile(
//         title: Text('الأداء'),
//         trailing: Icon(Icons.person),
//       ),
//       Divider(),
//       ListTile(
//         title: Text('التحويل'),
//         trailing: Icon(Icons.person),
//       ),
//       Divider(),
//       ListTile(
//         title: Text('الانهاء'),
//         trailing: Icon(Icons.person),
//       ),
//       Divider(),
//       ListTile(
//         title: Text('الموظفين'),
//         trailing: Icon(Icons.person),
//       ),
//     ],
//   ),
// )),
