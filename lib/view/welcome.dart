import 'package:flutter/material.dart';
import 'package:utawi_iku/view/dashboard.dart';
import 'package:utawi_iku/view/login.dart';
void main() => runApp(Welcome());

class Welcome extends StatefulWidget {
  Welcome({Key key}) : super(key: key);

  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 18.0,
                horizontal: 24.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 300.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/welcome_1.jpg"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.0,),
                  Text("Utawi Iku", style: TextStyle(fontSize: 24.0, fontFamily: "Regular", fontWeight: FontWeight.w600),),
                  SizedBox(height: 18.0,),
                  Text("Utawi Iku adalah sebuah aplikasi untuk mengkaji kitab kuning dan lebih dari itu, developer berharap akan tumbuh komunitas penggiat kitab kuning dari sini", style: TextStyle(fontSize: 18.0, fontFamily: "Regular", fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                  SizedBox(height: 18.0,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Dashboard()
                      ));
                    },
                      child: Container(
                      width: 150.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent[400],
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Center(
                        child: Text("Mulai", style: TextStyle(fontSize: 16.0, fontFamily: "Regular", fontWeight: FontWeight.w600, color: Colors.white),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}