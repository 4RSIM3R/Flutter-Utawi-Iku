import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(Event());

class Event extends StatefulWidget {
  Event({Key key}) : super(key: key);

  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            vertical: 18.0,
            horizontal: 26.0
          ),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.teal[700],
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only( top: 15.0, bottom: 15.0, left: 15.0, right: 10.0 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Today", style: TextStyle( fontFamily: "Medium", color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700, ),),
                            Icon(MdiIcons.formatListBulleted, size: 25.0, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 8.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("KH Cholil Dahlan", style: TextStyle(fontFamily: "Medium", color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600,),),
                                SizedBox(height: 4.0,),
                                Row(
                                  children: <Widget>[
                                    Text("18.00", style: TextStyle(fontFamily: "Medium", color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.w600,),),
                                    SizedBox(width: 4.0,),
                                    Text("WIB", style: TextStyle(fontFamily: "Medium", color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600,),),
                                  ],
                                ),
                                SizedBox(height: 4.0,),
                                Text("At Ponpes Darul Ulum", style: TextStyle(fontFamily: "Medium", color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600,),),
                              ],
                            ),
                            // Container(
                            //   width: 80.0,
                            //   height: 80.0,
                            //   decoration: BoxDecoration(
                            //     color: Colors.white
                            //   ),
                            // )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Recomended", style: TextStyle(fontFamily: "Medium", color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w700,),)
                    ],
                  ),
                ),
                SizedBox(height: 12.0,),
                Container(
                  height: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: bisa,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Upcoming ", style: TextStyle(fontFamily: "Medium", color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w700,),)
                    ],
                  ),
                ),
                SizedBox(height: 12.0,),
                Container(
                  height: 230.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: pcoming,
                  ),
                ),
               
              ],
            )
          ],
        ),
      ),
    );
  }
  List<Category> bisa = [
    Category("http://editorial.id/wp-content/uploads/2018/12/IMG-20181229-WA0021.jpg", "Sholawat"),
    Category("https://www.wasathiyyah.com/wp-content/uploads/2018/12/Khataman-Alquran-640x427.jpg", "Rutinan"),
    Category("https://i.ytimg.com/vi/R4FMkqIitpY/maxresdefault.jpg", "Ceramah"),
  ];
  List<Tes> pcoming = [
    Tes("https://i.ytimg.com/vi/2HDdOkjCL-Q/maxresdefault.jpg", "Haul Darul Ulum"),
    Tes("https://i.pinimg.com/originals/34/de/8b/34de8b8bd683aa6a3345929e98d387ea.jpg", "Gebyar Sholawat"),
    Tes("https://sidogiri.net/wp-content/uploads/2015/12/MG_5251-900x600.jpg", "Pengajian Habib Taufiq")


  ];
}

 class Category extends StatelessWidget {
  String url, title;
  Category(this.url, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
            height: 120.0,
            width: 150.0,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover
              )
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title, style: TextStyle( fontFamily: "Medium", fontSize: 14.0, color: Colors.white ),),
                ),
              ],
            ),
            ),            
    );
  }
} 

 class Tes extends StatelessWidget {
  String img, title;
  Tes(this.img, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
            height: 230.0,
            width: 150.0,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)
            ), 
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: TextStyle( fontFamily: "Medium", fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w700 ),),
                ],
              ),
            ),           
      ),
    );
  }
}