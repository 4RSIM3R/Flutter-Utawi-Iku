import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(Diskusi());


class Diskusi extends StatefulWidget {
  Diskusi({Key key}) : super(key: key);

  _DiskusiState createState() => _DiskusiState();
}

class _DiskusiState extends State<Diskusi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
          body: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 24.0
            ),
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
                            hintText: "e.g Hukum Bunga Bank ?  "
                          ),
                        ),
              ),
              SizedBox(height: 18.0,),
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 10.0, // has the effect of softening the shadow
                      spreadRadius: 5.0, // has the effect of extending the shadow
                      offset: Offset(
                        5.0, // horizontal, move right 10
                        5.0, // vertical, move down 10
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 12.0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage("https://cdn.dribbble.com/users/1077075/screenshots/5959465/avatar.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 8.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Abdul Suku", style: TextStyle(fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600,),),
                               SizedBox(width: 4.0,),
                              Text("Fiqih", style: TextStyle(fontFamily: "Regular", fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8.0,),
                      Text("Bagaimana Hukumnya Pembagian Harta Warisan Perundingan Dahulu Antar Anggota Keluarga ? ", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600,),),
                      SizedBox(height: 12.0,),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            height: 37.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Center(
                              child: Text("Jawab", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.0,),
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 10.0, // has the effect of softening the shadow
                      spreadRadius: 5.0, // has the effect of extending the shadow
                      offset: Offset(
                        5.0, // horizontal, move right 10
                        5.0, // vertical, move down 10
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 12.0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage("https://cdn.dribbble.com/users/1077075/screenshots/5959465/avatar.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 8.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Abdul Suku", style: TextStyle(fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600,),),
                               SizedBox(width: 4.0,),
                              Text("Fiqih", style: TextStyle(fontFamily: "Regular", fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8.0,),
                      Text("Bagaimana Hukumnya Membaca Bismillah Di Awal Surat Alfatihah ", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600,),),
                      SizedBox(height: 12.0,),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            height: 37.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Center(
                              child: Text("Jawab", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
                            SizedBox(height: 12.0,),
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 10.0, // has the effect of softening the shadow
                      spreadRadius: 5.0, // has the effect of extending the shadow
                      offset: Offset(
                        5.0, // horizontal, move right 10
                        5.0, // vertical, move down 10
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 12.0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(30.0),
                              image: DecorationImage(
                                image: NetworkImage("https://cdn.dribbble.com/users/5746/screenshots/5895153/dribbble-avatar-salvatier.png"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 8.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Muhammad Ilzam", style: TextStyle(fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600,),),
                               SizedBox(width: 4.0,),
                              Text("Akhlaq", style: TextStyle(fontFamily: "Regular", fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8.0,),
                      Text("Penggunaan Diksi kafir untuk menyebut non muslim, Bagaimanakan Hukumnya ", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600,),),
                      SizedBox(height: 12.0,),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            height: 37.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Center(
                              child: Text("Jawab", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){

            },
            child: Center(child: Icon(MdiIcons.plus, size: 32.0,)),
             backgroundColor: Colors.blue,
          ),
      ),
    );
  }
}