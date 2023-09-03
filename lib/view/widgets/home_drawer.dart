import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../company_details/primary_info.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              ),
              // backgroundColor: Colors.redAccent.shade100,
              backgroundColor: Colors.grey,
              minRadius: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text('super admin'),
            SizedBox(
              height: 20,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PrimaryInfoPage();
                    }));
                  },
                  title: Text(
                    'المعلومات الأساسية',
                    textAlign: TextAlign.left,
                  ),
                  trailing: Icon(
                    Icons.info_outline_rounded,
                    color: Color.fromARGB(255, 249, 128, 128),
                  )),
            ),
            Divider(),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   // return EditProfilePage();
                    // }));
                  },
                  title: Text(
                    'اللغة',
                    textAlign: TextAlign.left,
                  ),
                  trailing: Icon(
                    Icons.language_outlined,
                    color: Color.fromARGB(255, 249, 128, 128),
                  )),
            ),
            Divider(),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   // return EditProfilePage();
                    // }));
                  },
                  title: Text(
                    'تغيير كلمة المرور',
                    textAlign: TextAlign.left,
                  ),
                  trailing: Icon(
                    Icons.lock_outline,
                    color: Color.fromARGB(255, 249, 128, 128),
                  )),
            ),
            Divider(),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   // return EditProfilePage();
                    // }));
                  },
                  title: Text(
                    'تسجيل الخروج',
                    textAlign: TextAlign.left,
                  ),
                  trailing: Icon(
                    Icons.logout_outlined,
                    color: Color.fromARGB(255, 249, 128, 128),
                  )),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
