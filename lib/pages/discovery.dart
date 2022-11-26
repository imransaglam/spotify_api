import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:10,left: 15,right: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 350,
                        height: 184,
                        //color: Colors.red,
          
                      ),
                      Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
              Icon(Icons.search_rounded,color: Color(0xff2D264B),),
               Image.asset("assets/spotify.png"),
               Icon(Icons.more_vert_rounded,color: Color(0xff7D7D7D),),
                  ],
                ),
                      Positioned(
                        top: 60,
                        child: Container(
                        width: 350,
                        height: 118,
                        decoration: BoxDecoration(
                          color: Color(0xff42C83C),
                          borderRadius: BorderRadius.circular(30)
                        ),
                       ),
                      ),
                       Positioned(
                        top: 80,left: 20,
                         child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("New Album",style: TextStyle(color: Color(0xffFBFBFB),fontSize: 10,fontWeight: FontWeight.w500)),
                              SizedBox(height: 8,),
                              Text("Happier Than Ever",style: TextStyle(color: Color(0xffFBFBFB),fontSize: 19,fontWeight: FontWeight.bold)),
                              SizedBox(height: 8,),
                              Text("Billie Eilish",style: TextStyle(color: Color(0xffFBFBFB),fontSize: 13,fontWeight: FontWeight.w500)),
                            ],
                          ),
                       ),
                      Positioned(
                        right: 22,bottom: 2,
                        child: Container(
                          width: 325,
                          height: 193,
                          child: Image.asset("assets/singer.png"),
                        
                        ),
                      ),
                          
                    ],
                 
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    //color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 45),
                          child: Text("News",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(right: 45),
                           child: Text("Video",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(right: 45),
                            child: Text("Artists",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                          ),
                           Text("Podcasts",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                      ],
                    )
                  ),
                ),
                 Container(
                  width: 713,
                  height: 255,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                   width: 160,
                                   height:200 ,
                                   //color: Colors.red,
                                  ),
                                  Container(
                                  width: 147,
                                  height: 185,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/Rectangle8.png"),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      )),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 20,
                                  child: Icon(Icons.play_circle_fill_rounded,color:Color(0xffE6E6E6),size: 40,))
                                ],
                              ),
                            
                             
                                   Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                     child: Text(
                                      "Bad Guy",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                  ),
                                   ),
                                
                              
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Billie Eilish",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        );
                      })),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Playlist",
                        style: TextStyle(
                            color: Color(0xff131313),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See More",
                        style: TextStyle(
                            color: Color(0xff131313),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 460,
                  height: 200,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.play_circle_filled_rounded,
                                    size: 37,
                                    color: Color(0xffE6E6E6),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "As It Was",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Harry Styles",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "5:33",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    size: 20,
                                    color: Color(0xffB4B4B4),
                                  )
                                ],
                              ),
                            ));
                      })),
                ),
               
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}