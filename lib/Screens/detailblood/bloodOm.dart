
import 'package:flutter/cupertino.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';


class BloodOm extends StatefulWidget {

  @override
  _BloodOm createState() => _BloodOm();
}

class _BloodOm extends State<BloodOm> {

  late Query _ref;
  DatabaseReference reference =
  FirebaseDatabase.instance.reference().child('Data');
  @override
  void initState() {
    super.initState();
    _ref = FirebaseDatabase.instance
        .reference()
        .child('Data');
  }

  Widget _buildMemberItem({required Map data}) {

    return  Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.15),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 21),
            blurRadius: 53,
            color: Colors.black.withOpacity(0.05),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Text("နာမည် = "),
              SizedBox(width: 20,),
              Text(
                data['name'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("မှတ်ပုံတင်အမှတ် = "),
              SizedBox(width: 20,),
              Text(
                data['ncr'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("အဖနာမည် = "),
              SizedBox(width: 20,),
              Text(
                data['dadname'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("ဖုန်းနါပတ် = "),
              SizedBox(width: 20,),
              Text(
                data['phno'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("နေရပ်လိပ်စာ = "),
              SizedBox(width: 20,),
              Text(
                data['address'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("သွေးအမျိူးအစား = "),
              SizedBox(width: 20,),
              Text(
                data['bloodType'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("နောက်ဆုံးလှူခဲ့သောရက် = "),
              SizedBox(width: 20,),
              Text(
                data['totalday'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("သွေးလှူခဲ့သော အကြိမ်အရေတွက် = "),
              SizedBox(width: 20,),
              Text(
                data['count'],
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Omသွေးစာ၇င်း')),
      body: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
          query: _ref.orderByChild('bloodType').equalTo('Om'),
          itemBuilder: (BuildContext context, DataSnapshot snapshot,
              Animation<double> animation, int idex) {
            Map data = snapshot.value;
            data['key'] = snapshot.key;
            return _buildMemberItem(data: data);
          },
        ),
      ),

    );
  }


}