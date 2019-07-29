import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Ngaji());

class Ngaji extends StatefulWidget {
  Ngaji({Key key}) : super(key: key);

  _NgajiState createState() => _NgajiState();
}

class _NgajiState extends State<Ngaji> {
  
  @override
  Widget build(BuildContext context) {
    var _desc = "Dalam kitabnya, Abu Syuja menjelaskan latar belakang disusunnya kitab tersebut yaitu merupakan respon dirinya atas permintaan sahabat dan santri-santrinya yang menghendaki beliau menulis kitab fiqh madzhab Syafi-i dalam rangka memberikan kemudahan bagi para pengkaji yang masih pemula, sebagaimana harapan beliau dalam memberikan nama kitab tersebut dengan judul fathul qorib.";
    return SafeArea(
          child: Scaffold(
          body: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 24.0
            ),
            children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 240.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage("https://1.bp.blogspot.com/-T4CJZOxVkEc/WdtpAa-FOVI/AAAAAAAABrU/bzCNrSxIi-gLLN3qpaai9MBYgOcoWV5HgCLcBGAs/s1600/Fathul-Qorib.jpg"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      SizedBox(height: 16.0,),
                      Text("Fathul Qorib", style: TextStyle(fontFamily: "Regular", fontSize: 24.0, fontWeight: FontWeight.w600),),
                      SizedBox(height: 4.0,),
                      Text("Abu Syuja' Al Asfihani", style: TextStyle(fontFamily: "Regular", fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.grey[400]),),
                      SizedBox(height: 16.0,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 45.0,
                        width: 148.0,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(22.5)
                        ),
                        child: Center(
                          child: Text("Baca", style: TextStyle(color: Colors.white, fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600),),
                        ),
                      ),
                      SizedBox(width: 16.0,),
                      Container(
                        height: 45.0,
                        width: 148.0,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(22.5)
                        ),
                        child: Center(
                          child: Text("Tonton", style: TextStyle(color: Colors.white, fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600),),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16.0,),
                  Text("Kitab Ini", style: TextStyle(fontFamily: "Regular", fontSize: 20.0, fontWeight: FontWeight.w600),),
                  SizedBox(height: 8.0,),
                  Text(_desc, style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600),),
            ],
          ),
      ),
    );
  }
}