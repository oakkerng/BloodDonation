
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddDonor extends StatefulWidget {
  const AddDonor({Key? key}) : super(key: key);

  @override
  _AddDonorState createState() => _AddDonorState();
}

class _AddDonorState extends State<AddDonor> {
       var counts,selectedate;
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _ncrController = new TextEditingController();
  TextEditingController _dadController = new TextEditingController();
  TextEditingController _phController = new TextEditingController();
  TextEditingController _addressController = new TextEditingController();
  DateTime selectedDate = DateTime.now();
  var drowonvale = 'A';
  late String SelectedBlood;
  var bloodtype={"A","B","AB","O","Am","Bm","ABm","Om"};
   DatabaseReference _ref = FirebaseDatabase.instance.reference().child("Data");
   int _counter = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("သွေးလှူရှင် အသစ်ထည့်ရန်"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: _nameController,

                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'နာမည်'),

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(

                          controller: _ncrController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'မှတ်ပုံတင်အမှတ်'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(

                          controller: _dadController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'အဖနာမည်'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(

                          controller: _phController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'ဖုန်းနါပတ်'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(

                          controller: _addressController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'နေရပ်လိပ်စာ'),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("သွေးအမျိူးအစား - "),
                          SizedBox(width: 30,),
                          DropdownButton(
                            value: drowonvale,
                            icon: Icon(Icons.keyboard_arrow_down),
                            items:bloodtype.map((String items) {
                              return DropdownMenuItem(
                                  value: items,
                                  child: Text(items)
                              );
                            }
                            ).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                drowonvale = newvalue.toString();
                                SelectedBlood= newvalue.toString();
                              });

                            },

                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _selectDate(context);
                      },
                      child: Text("နောက်ဆုံးလှူခဲ့သောရက်"),
                    ),
                    SizedBox(width: 20,),
                    Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
                  ],

                    ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _incrementCounter();
                              counts=_counter;
                            },
                            child: Text("သွေးလှူခဲ့သော အကြိမ်အရေတွက်"),
                          ),
                          SizedBox(width: 20,),
                          Text("$_counter"),
                        ],

                      ),
                      SizedBox(
                        height: 10,
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(120, 0, 120, 0),
              child: ElevatedButton(
                onPressed: (){
                  _confirm(context);
                },
                child: Text(
                  'အသစ်ထည့်သွင်းရန်',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
   void _incrementCounter() {
     setState(() {
       _counter++;
     });
   }
   void _confirm(BuildContext context) {
     showDialog(
         context: context,
         builder: (context) {
           return AlertDialog(
             content: Text('Are you sure you want to save Data?'),
             actions: [
               TextButton(
                   onPressed: () {
                     Navigator.pop(context);
                   },
                   child: Text('Cancel')),
               TextButton(
                   onPressed: () {
                     setState(() {
                       add();
                       Navigator.of(context).pop();
                     });
                   },
                   child: Text('Save'))
             ],
           );
         });
   }
  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
        selectedate=selectedDate.toString();
      });
  }
   void add() {
    String name=_nameController.text;
    String ncr=_ncrController.text;
    String dad=_dadController.text;
    String phno=_phController.text;
    String address=_addressController.text;
    String bloodype=SelectedBlood.toString();
    String count=counts.toString();
     Map<String, String> data = {
       'name': name,
       'ncr': ncr,
       'dadname': dad,
       'phno': phno,
       'address': address,
       'bloodType': bloodype,
       'totalday':selectedate.toString(),
       'count':count,
     };
     _ref.push().set(data).then((value) {
       Navigator.pop(context);
     });
   }

}
