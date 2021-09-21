
import 'package:blood_don/Navigation/navigationDrawer.dart';
import 'package:blood_don/Screens/detailblood/bloodAB.dart';
import 'package:blood_don/Screens/detailblood/bloodAm.dart';
import 'package:blood_don/Screens/detailblood/bloodBm.dart';
import 'package:blood_don/Screens/detailblood/bloodO.dart';
import 'package:blood_don/widgets/infocard.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'detailblood/bloodA.dart';
import 'detailblood/bloodABm.dart';
import 'detailblood/bloodB.dart';
import 'detailblood/bloodOm.dart';



class SecondRoute extends StatelessWidget {
  DateTime selectedDate = DateTime.now();
  late int daynow,monthnow,datenow,totalday;

  @override
  DatabaseReference _ref = FirebaseDatabase.instance.reference().child('Data');

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('နအတ္တ သွေးလှူရှင်အသင်း'),
      ),
      drawer: navigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
             child: Column(
               children: [
                 InfoCard(
                   title: "A သွေး ကုသိုလ်ရှင်များ",
                   iconColor: Color(0xFFFF8C00),
                   press: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) {
                           return BloodA();
                         },
                       ),
                     );

                   },
                 ),
               ],
             ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  InfoCard(
                    title: "B သွေး ကုသိုလ်ရှင်များ",
                    iconColor: Color(0xFFFF8C00),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BloodB();
                          },
                        ),
                      );

                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  InfoCard(
                    title: "AB သွေး ကုသိုလ်ရှင်များ",
                    iconColor: Color(0xFFFF8C00),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BloodAB();
                          },
                        ),
                      );

                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  InfoCard(
                    title: "O သွေး ကုသိုလ်ရှင်များ",
                    iconColor: Color(0xFFFF8C00),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BloodO();
                          },
                        ),
                      );

                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  InfoCard(
                    title: "Am သွေး ကုသိုလ်ရှင်များ",
                    iconColor: Color(0xFFFF8C00),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BloodAm();
                          },
                        ),
                      );

                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  InfoCard(
                    title: "Bm သွေး ကုသိုလ်ရှင်များ",
                    iconColor: Color(0xFFFF8C00),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BloodBm();
                          },
                        ),
                      );

                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  InfoCard(
                    title: "ABm သွေး ကုသိုလ်ရှင်များ",
                    iconColor: Color(0xFFFF8C00),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BloodABm();
                          },
                        ),
                      );

                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  InfoCard(
                    title: "Om သွေး ကုသိုလ်ရှင်များ",
                    iconColor: Color(0xFFFF8C00),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BloodOm();
                          },
                        ),
                      );

                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),

    );

  }

}