import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:utawi_iku/signup.dart';
void main() => runApp(Signup());

class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var _ucapan = "Selamat datang di Utawi Iku App salah satu platform ngaji, Ayo Nderes!!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 28.0
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Sign up", style: TextStyle(fontFamily: "Regular", fontSize: 28.0, fontWeight: FontWeight.w700),),
                  SizedBox(height: 12.0,),
                  SizedBox(width: 58.0, height: 4.0,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                  ),),
                  SizedBox(height: 12.0,),
                  Text("Assalamualaikum, please fill in the form below to complete your register in Utawi Iku", style: TextStyle(fontFamily: "Regular", fontSize: 16.0, fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 28.0
                ),
              child: Container(
              width: double.infinity,
              height: 240.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey[200])
                        ),
                        child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white) 
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey[200]) 
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          prefixIcon: Icon(MdiIcons.accountCircle, color: Colors.blue,),
                          contentPadding: EdgeInsets.all(8.0),
                          hintText: "Your Email"
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey[200])
                      ),
                        child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white) 
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white) 
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white) 
                          ),
                          
                          prefixIcon: Icon(MdiIcons.lock, color: Colors.blue,),
                          contentPadding: EdgeInsets.all(8.0),
                          hintText: "Your Password"
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: Text("Signup", style: TextStyle( fontSize: 16.0, fontFamily: "Regular", fontWeight: FontWeight.w600, color: Colors.white ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Or Connect Social", style: TextStyle( fontFamily: "Oreg", fontSize: 16.0, fontWeight: FontWeight.w600 ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(MdiIcons.facebookBox, size: 32.0, color: Colors.blueAccent,),
                        onPressed: (){

                        },
                      ),
                      IconButton(
                        icon: Icon(MdiIcons.googlePlusBox, size: 32.0, color: Colors.redAccent,),
                        onPressed: (){

                        },
                      ),
                      IconButton(
                        icon: Icon(MdiIcons.twitterCircle, size: 32.0, color: Colors.blue,),
                        onPressed: (){

                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
                     width: double.infinity,
                     height: 230.0,
                     decoration: BoxDecoration(
                       color: Colors.black,
                       image: DecorationImage(
                         image: AssetImage("assets/images/apik.jpg"),
                         fit: BoxFit.cover
                       )
                     ),
                   )
          ],
        ),       
      ),
    );
  }


}