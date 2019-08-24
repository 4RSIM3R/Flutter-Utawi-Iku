import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:utawi_iku/view/upgrade.dart';
import 'ngaji.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(Kitab());


class Kitab extends StatefulWidget {
  Kitab({Key key}) : super(key: key);

  _KitabState createState() => _KitabState();
}

class _KitabState extends State<Kitab> {
  
  var dummy = "Kitab kuning, dalam pendidikan agama islam, merujuk kepada kitab-kitab tradisional yang berisi pelajaran-pelajaran agama islam (diraasah al-islamiyyah) yang diajarkan pada Pondok-pondok Pesantren, mulai dari fiqh, aqidah, akhlaq/tasawuf, tata bahasa arab (`ilmu nahwu dan `ilmu sharf), hadits, tafsir, `ulumul qur'aan, hingga pada ilmu sosial dan kemasyarakatan (mu`amalah). ";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
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
                      top: 32.0,
                      left: 24.0,
                      right: 24.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 120.0,
                          height: 180.0,
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 18.0,
                            bottom: 18.0
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Kifayatul Awam", style: TextStyle(color: Colors.white, fontFamily: "Regular", fontSize: 24.0, fontWeight: FontWeight.w600),),
                              SizedBox(height: 8.0,),
                              Text("Imam Ghozali", style: TextStyle(color: Colors.white, fontFamily: "Regular", fontSize: 16.0, fontWeight: FontWeight.w500),),
                              SizedBox(height: 8.0,),
                              RatingBarIndicator(
                               rating: 4.5,
                               unratedColor: Colors.white,
                               itemCount: 5,
                               itemSize: 20.0,
                               itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                               ),
                              ),
                              SizedBox(height: 8.0,),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => Upgrade()
                                    ));
                                  },
                                  child: Container(
                                  width: 120.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0)
                                  ),
                                  child: Center(
                                    child: Text("Simak Kitab", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, color: Colors.blueAccent[200], fontWeight: FontWeight.w600),)
                                  ),
                                ),
                              )
                            ]
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 24.0,),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Prolog Kitab", style: TextStyle(fontFamily: "Regular", fontSize: 28.0, fontWeight: FontWeight.w600),),
                    SizedBox(height: 18.0,),
                    Text(dummy, style: TextStyle(fontFamily: "Regular", fontSize: 16.0, fontWeight: FontWeight.w500),),
                    SizedBox(height: 24.0,),
                    GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Ngaji()
                            ));
                          },
                          child: Container(
                          width: double.infinity,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent[200],
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(
                            child: Text("Baca Kitab", style: TextStyle(fontFamily: "Regular", fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),),
                          ),
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
     