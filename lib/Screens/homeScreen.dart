import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Secondrout.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  var Username,Password;
  var nameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 50,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Column(

                  children: [
                    Text("နအတ္တ သွေးလှူရှင်အသင်း",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 140,),
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
                          controller: nameController,

                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'User Name'),

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Password'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          onPressed: (){
                            Username = nameController.text;
                            Password = passwordController.text;
                            if(Username=="admin" && Password=="1234"){
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>
                                  SecondRoute(),
                              ));
                            }
                            else{
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text('Invalid Username & Password!Try Again'),));
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
