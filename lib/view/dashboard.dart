import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/scheduler.dart';
import 'package:utawi_iku/view/search.dart';
import 'kitab.dart';

void main() => runApp(Dashboard());


class Dashboard extends StatefulWidget {
  
  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();

}


class _DashboardState extends State<Dashboard>  {

   TextEditingController _controller = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeDilation = 2.0;
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[400],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.0,
                    horizontal: 24.0
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: TextField(
                            onSubmitted: (value){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Search()
                                ));
                            },
                            controller: _controller,
                            decoration: InputDecoration(
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
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                 borderSide: BorderSide(color: Colors.white) 
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal: 14.0
                              ),
                              suffixIcon: Icon(Icons.search),
                              hintText: 'Fathul Qorib'
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 18.0,),
                      Text("Face The New\nExperience", style: TextStyle(fontFamily: "Regular", fontWeight: FontWeight.w700, fontSize: 32.0, color: Colors.white),),
                      SizedBox(height: 14.0,),
                      Text("In the history modern\nastronomThere is probabily\none greater leap", style: TextStyle(fontFamily: "Regular", fontWeight: FontWeight.w500, fontSize: 22.0, color: Colors.white),),
                      SizedBox(height: 16.0,),
                      Container(
                        width: 120.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: Text("Explore", style: TextStyle(fontFamily: "Regular", fontWeight: FontWeight.w600, fontSize: 14.0, color: Colors.blueAccent[400])),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                top: 24.0,
                bottom: 16.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("New releases", style: TextStyle(fontFamily: "Regular", fontWeight: FontWeight.w600, fontSize: 24.0, color: Colors.black87)),
                  Text("See All", style: TextStyle(fontFamily: "Regular", fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.black87))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                top: 4.0,
                bottom: 12.0
              ),
              child: Container(
                height: 210.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12.0
                      ),
                      child: Container(
                        height: double.infinity,
                        width: 130.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/dummy3.jpg"),
                             fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12.0
                      ),
                      child: Container(
                        height: double.infinity,
                        width: 130.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/dummy2.jpg"),
                             fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12.0
                      ),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Kitab()
                            ));
                          },
                          child: Container(
                          height: double.infinity,
                          width: 130.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: NetworkImage("https://s0.bukalapak.com/img/0673988582/w-1000/Kitab_Kifayatul_Awam_Kitab_Syarah_Kifayatul_Awam_cover_duple.png"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
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

