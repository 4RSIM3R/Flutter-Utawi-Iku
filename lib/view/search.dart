import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            top: 18.0
          ),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16.0
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow:  [
                          BoxShadow(
                            color: Colors.grey[200],
                            blurRadius: 20.0,
                            spreadRadius: 5.0, 
                            offset: Offset(
                              1.0, // horizontal, move right 10
                              1.0, // vertical, move down 10
                            ),
                          )
                        ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                        bottom: 18.0
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 170.0,
                            width: 115.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/dummy2.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 18.0,),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 28.0,
                              right: 2.0
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Fathul Qorib", style: TextStyle(fontFamily: "Regular", fontSize: 20.0, fontWeight: FontWeight.w600),),
                                SizedBox(height: 8.0,),
                                Text("Abu Syuja' Al asfihani", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, color: Colors.grey[400]),),
                                SizedBox(height: 18.0,),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 35.0,
                                      width: 95,
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent[200],
                                        borderRadius: BorderRadius.circular(5.0)
                                      ),
                                      child: Center(
                                        child: Text("Detail",  style: TextStyle(fontFamily: "Regular", fontSize: 14.0, color: Colors.white),),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16.0
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow:  [
                          BoxShadow(
                            color: Colors.grey[200],
                            blurRadius: 20.0,
                            spreadRadius: 5.0, 
                            offset: Offset(
                              1.0, // horizontal, move right 10
                              1.0, // vertical, move down 10
                            ),
                          )
                        ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                        bottom: 18.0
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 170.0,
                            width: 115.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image:NetworkImage("https://ppmiblog.files.wordpress.com/2016/12/6c5fd-fathul2bmuin.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 18.0,),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 28.0,
                              right: 2.0
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Fathul Mu'in", style: TextStyle(fontFamily: "Regular", fontSize: 20.0, fontWeight: FontWeight.w600),),
                                SizedBox(height: 8.0,),
                                Text("Zainudin Al-Malibari", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, color: Colors.grey[400]),),
                                SizedBox(height: 18.0,),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 35.0,
                                      width: 95,
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent[200],
                                        borderRadius: BorderRadius.circular(5.0)
                                      ),
                                      child: Center(
                                        child: Text("Detail",  style: TextStyle(fontFamily: "Regular", fontSize: 14.0, color: Colors.white),),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16.0
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow:  [
                          BoxShadow(
                            color: Colors.grey[200],
                            blurRadius: 20.0,
                            spreadRadius: 5.0, 
                            offset: Offset(
                              1.0, // horizontal, move right 10
                              1.0, // vertical, move down 10
                            ),
                          )
                        ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                        bottom: 18.0
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 170.0,
                            width: 115.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image:NetworkImage("http://nahdlatululama.id/wp-content/uploads/2018/02/cover-49.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 18.0,),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 28.0,
                              right: 2.0
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Fathul Wahab", style: TextStyle(fontFamily: "Regular", fontSize: 20.0, fontWeight: FontWeight.w600),),
                                SizedBox(height: 8.0,),
                                Text("Zakariya Al Anshori", style: TextStyle(fontFamily: "Regular", fontSize: 14.0, color: Colors.grey[400]),),
                                SizedBox(height: 18.0,),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 35.0,
                                      width: 95,
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent[200],
                                        borderRadius: BorderRadius.circular(5.0)
                                      ),
                                      child: Center(
                                        child: Text("Detail",  style: TextStyle(fontFamily: "Regular", fontSize: 14.0, color: Colors.white),),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}