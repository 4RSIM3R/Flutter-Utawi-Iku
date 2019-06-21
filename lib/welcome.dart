import 'package:flutter/material.dart';
import 'package:utawi_iku/layout.dart';
import 'package:utawi_iku/login.dart';
import 'package:utawi_iku/signup.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(Welcome());

class Welcome extends StatefulWidget {
  Welcome({Key key}) : super(key: key);

  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  double size1;
  @override
  void initState() { 
    super.initState();
    double size1 =  1.8;
    timeDilation = 3.0;
  }
 
  var _desc = "is an application for you to explore Islamic sources of literacy and also discuss here to find religious solutions";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
                    Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 18.0
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.height / 2,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/welcome.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28.0,
                      vertical: 16.0
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Utawi Iku", style: TextStyle(fontFamily: "Regular", fontSize: MediaQuery.of(context).size.height / 20 , fontWeight: FontWeight.w700),),
                        SizedBox(height: MediaQuery.of(context).size.height / 45,),
                        // per 40 = 16, per 45 = 8, per 30 = 12, per 15 = 40.0, per 7 = 100
                        Text(_desc, style: TextStyle(fontFamily: "Regular", fontSize: MediaQuery.of(context).size.height / 40, fontWeight: FontWeight.w600),),
                         SizedBox(height: MediaQuery.of(context).size.height / 30,),
                         Row(
                           children: <Widget>[
                             GestureDetector(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Login()
                                  ));
                               },
                              child: Container(
                                 height: MediaQuery.of(context).size.height / 15,
                                 width: MediaQuery.of(context).size.height / 7,
                                 decoration: BoxDecoration(
                                   color: Colors.blue,
                                   borderRadius: BorderRadius.circular(5.0)
                                 ),
                                 child: Center(
                                   child: Text("Login", style: TextStyle(fontFamily: "Regular", fontSize: MediaQuery.of(context).size.height / 40, fontWeight: FontWeight.w600, color: Colors.white),),
                                 ),
                               ),
                             ),
                             SizedBox(width: 8.0,),
                             GestureDetector(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Signup()
                                  ));
                               },
                               child: Container(
                                 height: MediaQuery.of(context).size.height / 15,
                                 width: MediaQuery.of(context).size.height / 7,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(color: Colors.blue)
                                 ),
                                 child: Center(
                                   child: Text("Signup", style: TextStyle(fontFamily: "Regular", fontSize: MediaQuery.of(context).size.height / 40, fontWeight: FontWeight.w600, color: Colors.blue),),
                                 )
                               ),
                             ),
                           ],
                         )
                      ],
                    ),
                  ),
            ],
          ),
          ],
        )
      ),
    );
  }
}