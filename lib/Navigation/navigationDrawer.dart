
import 'package:blood_don/Screens/addDonor.dart';
import 'package:blood_don/Screens/dornorlist.dart';
import 'package:flutter/material.dart';
import 'createDrawerBodyItem.dart';
import 'createDrawerHeader.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
              icon: Icons.view_list,text: 'သွေးလှူရှင် စာ၇င်း', onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DonorList()),);
          }),

          createDrawerBodyItem(
              icon: Icons.add_box,text: 'သွေးလှူရှင် အသစ်ထည့်ရန်', onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddDonor()),);
          }),
          Divider(),
          createDrawerBodyItem(
              icon: Icons.contact_phone,text: 'နအတ္တအသင်း၀င် ဖုန်းနံပါတ်များ', onTap: () {  }),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}