import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:utawi_iku/ngaji.dart';

void main() => runApp(Kitab());

class Kitab extends StatefulWidget {
  Kitab({Key key}) : super(key: key);

  _KitabState createState() => _KitabState();
}

class _KitabState extends State<Kitab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 18.0,
            horizontal: 24.0
          ),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                      Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey[200])
                      ),
                        child: TextField(
                        onChanged: (value) => {

                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey[200]) 
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey[200]) 
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey[200]) 
                          ),
                          
                          prefixIcon: Icon(MdiIcons.magnify, color: Colors.black,),
                          contentPadding: EdgeInsets.all(8.0),
                          hintText: "e.g Arbain Nawawiah"
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Rekomendasi", style: TextStyle(fontFamily: "Regular", fontSize: 20.0, fontWeight: FontWeight.w600),),
                        Icon(MdiIcons.refresh, size: 28.0,)
                      ],
                    ),
                    SizedBox(height: 16.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Ngaji()
                        ));
                      },
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            height: 125.0,
                            decoration: BoxDecoration(
                             
                              image: DecorationImage(
                                image: NetworkImage("https://inc.mizanstore.com/aassets/img/com_cart/produk/ihya-ulumuddin.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 12.0,),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Ihya' Ulumuddin", style: TextStyle(fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600),),
                                SizedBox(height: 8.0,),
                                Text("Abu Hamid Al Ghozali", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                                SizedBox(height: 8.0,),
                                Row(
                                  children: <Widget>[
                                    Icon(MdiIcons.star, color: Colors.amberAccent[400], size: 12.0,),
                                    SizedBox(width: 2.0,),
                                     Text("9.8 / 10 (10689)", style: TextStyle(fontFamily: "Regular", fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          height: 125.0,
                          decoration: BoxDecoration(
                           
                            image: DecorationImage(
                              image: NetworkImage("https://1.bp.blogspot.com/-T4CJZOxVkEc/WdtpAa-FOVI/AAAAAAAABrU/bzCNrSxIi-gLLN3qpaai9MBYgOcoWV5HgCLcBGAs/s1600/Fathul-Qorib.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 12.0,),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Fathul Qorib", style: TextStyle(fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600),),
                              SizedBox(height: 8.0,),
                              Text("Abu Syuja' Al Asfihani", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                              SizedBox(height: 8.0,),
                              Row(
                                children: <Widget>[
                                  Icon(MdiIcons.star, color: Colors.amberAccent[400], size: 12.0,),
                                  SizedBox(width: 2.0,),
                                   Text("9.6 / 10 (1089)", style: TextStyle(fontFamily: "Regular", fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          height: 125.0,
                          decoration: BoxDecoration(
                           
                            image: DecorationImage(
                              image: NetworkImage("https://1.bp.blogspot.com/-HfVMduigHX4/WdDsO4k5v1I/AAAAAAAABqw/X89c2g-mv0IK4S840YhuTx5WokEDpH0ZgCLcBGAs/s1600/Kitab%2BTa%2527limul%2BMuta%2527allim%2BAz-Zarnujiy.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 12.0,),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Ta'lim Muta'allim", style: TextStyle(fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600),),
                              SizedBox(height: 8.0,),
                              Text("Syech Al-Zarnuji", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                              SizedBox(height: 8.0,),
                              Row(
                                children: <Widget>[
                                  Icon(MdiIcons.star, color: Colors.amberAccent[400], size: 12.0,),
                                  SizedBox(width: 2.0,),
                                   Text("9.2 / 10 (109)", style: TextStyle(fontFamily: "Regular", fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
              ],
            ),
            SizedBox(height: 16.0,),
            Text("Kategori Terpopuler", style: TextStyle(fontFamily: "Regular", fontSize: 20.0, fontWeight: FontWeight.w600),),
            SizedBox(height: 16.0,),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text("Fiqih", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                  ),
                ),
                Container(
                  width: 90.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text("Ubudiyah", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                  ),
                ),
                Container(
                  width: 90.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text("Aqidah", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                  ),
                ),
                Container(
                  width: 90.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text("Akhlaq", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                  ),
                ),
                Container(
                  width: 90.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text("Muamalah", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}