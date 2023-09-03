import 'package:flutter/material.dart';
import 'package:web_com/view/widgets/advertizment_widget.dart';

import '../add/add_advertizement.dart';
import '../add/add_departure.dart';
import '../add/add_transfer.dart';
import '../add/add_travel.dart';
import '../details/departure_details.dart';
import '../details/ending_details.dart';
import '../details/meetings_details.dart';
import '../details/transfer_detail.dart';
import '../details/travel_detaild.dart';

class TransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التحويلات'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
            AdvertizmentWidget(Icons.repartition_rounded, TransferDetails()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddTransferPage();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
