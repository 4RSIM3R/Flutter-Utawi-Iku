import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  Payment({Key key}) : super(key: key);

  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 18.0
          ),
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.list,
                  size: 36.0,
                  color: Colors.black,
                ),
                Text("Account", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),),
                Container(
                  height: 42.0,
                  width: 42.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.0),
                    image: DecorationImage(
                      image: NetworkImage("https://img.freepik.com/free-vector/workers-uniform_3446-430.jpg?size=338&ext=jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 24.0,),
            Container(
              width: double.infinity,
              height: 220.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 20.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    10.0, // horizontal, move right 10
                    10.0, // vertical, move down 10
                  ),
                )
              ],
              ),
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                     Text("Current Balance", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),),
                     SizedBox(height: 12.0,),
                     Text("55.5", style: TextStyle(fontSize: 56.0, fontWeight: FontWeight.w600),),
                     Text("Ringgit Malaysia", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey[500]),),
                     SizedBox(height: 16.0,),
                     Container(
                       width: 125.0,
                       height: 45.0,
                       decoration: BoxDecoration(
                         
                         color: Colors.grey,
                         borderRadius: BorderRadius.circular(22.5),
                         
                       ),
                     )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}