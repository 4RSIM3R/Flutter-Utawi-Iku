import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/scheduler.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:utawi_iku/akun.dart';
import 'package:utawi_iku/diskusi.dart';
import 'package:utawi_iku/kitab.dart';
import 'package:utawi_iku/ngaji.dart';
import 'package:flutter/services.dart';

void main() => runApp(Dashboard());


class Dashboard extends StatefulWidget {
  
  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();

}


var page = [
  Dashboard(),
  Kitab(),
  Ngaji(),
  Diskusi(),
  Akun(),
];


class _DashboardState extends State<Dashboard> with WidgetsBindingObserver {

  int _currentIndex = 0;
   int _bottomNavCurrentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeDilation = 2.0;
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 16.0
          ),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 55.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        color: Colors.grey[300],
                        image: DecorationImage(
                          image: NetworkImage("https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(width: 6.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Ilzam", style: TextStyle(fontFamily: "Regular", fontSize: 22.0, fontWeight: FontWeight.w600,),),
                        Text("Regular Account", style: TextStyle(fontFamily: "Regular", fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.grey[300]),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage("https://alif.id/wp-content/uploads/2019/02/1-gus-baha.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Center(
                        child: Icon(MdiIcons.playCircle, size: 48.0, color: Colors.white,),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.9,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Ponpes Sidogiri", style: TextStyle( fontSize: 12.0, fontFamily: "Regular", fontWeight: FontWeight.w600, color: Colors.white),),
                            Text("Pengajian Kitab Ihya' Ulumuddin", style: TextStyle( fontSize: 16.0, fontFamily: "Regular", fontWeight: FontWeight.w800,  color: Colors.white ),),
                            Text("KH Bahauddin", style: TextStyle( fontSize: 14.0, fontFamily: "Regular", fontWeight: FontWeight.w600,  color: Colors.white ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                 SizedBox(height: 24.0,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: <Widget>[
                     Text("Highlights", style: TextStyle(fontFamily: "Regular", fontSize: 24.0, fontWeight: FontWeight.w600,),),
                     Text("And More", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.blue),),
                   ],
                 ),
                 SizedBox(height: 16.0,),
                 Container(
                  height: 180.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: soal,
                  ),
                ),
                SizedBox(height: 16.0,),
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Fathul Qorib", style: TextStyle(fontFamily: "Regular", fontSize: 16.0, fontWeight: FontWeight.w600,),),
                            Text("Pembagian Waktu\nSholat", style: TextStyle(fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600,),),
                            Container(
                              width: 60.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Center(
                                child:  Text("Fiqih", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                              )
                            )
                          ],
                        ),
                        Container(
                          height: double.infinity,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage("https://www.kabarmakkah.com/wp-content/uploads/2017/11/wssrhi.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                                SizedBox(height: 16.0,),
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Fathul Qorib", style: TextStyle(fontFamily: "Regular", fontSize: 16.0, fontWeight: FontWeight.w600,),),
                            Text("Pembahasan Bab\nPernikahan", style: TextStyle(fontFamily: "Regular", fontSize: 18.0, fontWeight: FontWeight.w600,),),
                            Container(
                              width: 60.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Center(
                                child:  Text("Fiqih", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),),
                              )
                            )
                          ],
                        ),
                        Container(
                          height: double.infinity,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage("https://i.pinimg.com/originals/ac/44/ab/ac44abd4e5f1edf861fe517ae5aff537.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        print(index);
        setState(() {
        _bottomNavCurrentIndex = index;
        });
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => page[_bottomNavCurrentIndex]
        ));
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: Colors.blueAccent[400],
          ),
          icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: new Text(
              'Beranda', style: TextStyle(fontFamily: "Regular"),
            ),
        ),
        BottomNavigationBarItem(
            activeIcon: new Icon(
             MdiIcons.youtubeTv,
              color: Colors.blueAccent[400],
            ),
            icon: new Icon(
             MdiIcons.youtubeTv,
              color: Colors.grey,
            ),
            title: new Text('Ngaji', style: TextStyle(fontFamily: "Regular")),
        ),
        BottomNavigationBarItem(
            activeIcon: new Icon(
               MdiIcons.bookOpen,
              color: Colors.blueAccent[400]
            ),
            icon: new Icon(
              MdiIcons.bookOpen,
              color: Colors.grey,
            ),
            title: new Text('Baca', style: TextStyle(fontFamily: "Regular")),
        ),
        BottomNavigationBarItem(
            activeIcon: new Icon(
              MdiIcons.accountQuestion,
              color: Colors.blueAccent[400],
            ),
            icon: new Icon(
               MdiIcons.accountQuestion,
              color: Colors.grey,
            ),
            title: new Text('Diskusi', style: TextStyle(fontFamily: "Regular")),
        )
      ]
    ),
    );
  }
}

List<Soal> soal = [
  Soal("https://cdn.dribbble.com/users/1355613/screenshots/6197011/____4_2x.jpg", "Wanita"),
  Soal("https://cdn.dribbble.com/users/101577/screenshots/4752902/couple-01.png", "Kontemporer"),
  Soal("https://assets.materialup.com/uploads/8e04f6ee-a195-4877-a5da-4c12822bc467/preview.jpg", "Muamalah"),
];

class Soal extends StatelessWidget {
  String img, soal;
  Soal(this.img, this.soal);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 120.0,
        height: 150.0,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(soal, style: TextStyle( fontFamily: "Regular", fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black87),)
            ],
          ),
        ),
      ),
    );
  }
}