import 'package:flutter/material.dart';

class Upgrade extends StatefulWidget {
  Upgrade({Key key}) : super(key: key);

  _UpgradeState createState() => _UpgradeState();
}

class _UpgradeState extends State<Upgrade> {
  var data = "Mohon maaf sekali untuk menggunakan layanan ini anda perlu upgrade akun anda ke premium, dengan cara download Utawi Iku Premium";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 24.0
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Assalamualaikum", style: TextStyle(fontFamily: "Regular", fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.blueAccent[200]),),
              Container(
                width: 400.0,
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/enterprise.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Text(data, style: TextStyle(fontFamily: "Regular", fontSize: 16.0, fontWeight: FontWeight.w500,), textAlign: TextAlign.center,),
              SizedBox(height: 16.0,),
              Container(
                width: 130.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent[200],
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text("Upgrade", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                ),
              )
            ],
          ),
        ),
    );
  }
}