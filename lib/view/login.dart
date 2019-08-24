import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dashboard.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeDilation = 2.0;
  }
  @override
  void dispose() {
    super.dispose();
  }
  
  var _ucapan = "Selamat datang di Utawi Iku App salah satu platform ngaji, Ayo Nderes!!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[200],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top:  200
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0)
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Selamat Datang", style: TextStyle(fontFamily: "Regular", fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.black87),),
                            SizedBox(height: 28.0,),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                prefixIcon: Icon(MdiIcons.email),
                                hintStyle: TextStyle(fontFamily: "Regular")
                              ),
                            ),
                            SizedBox(height: 28.0,),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: Icon(MdiIcons.key),
                                hintStyle: TextStyle(fontFamily: "Regular")
                              ),
                            ),
                            SizedBox(height: 28.0,),
                            Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.blueAccent[200],width: 2.0)
                              ),
                              child: Center(
                                child: Text("Masuk", style: TextStyle(color: Colors.blueAccent[200], fontWeight: FontWeight.w500, fontSize: 18.0),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),       
      ),
    );
  }


}