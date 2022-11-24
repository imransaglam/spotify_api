import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyapi/pages/homescreen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Rectangle15.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(69),
                          bottomRight: Radius.circular(69),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                          }),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Billie Eilish",
                      style: TextStyle(
                          color: Color(0xff222222),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("2 Album",
                      style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
                  Text(" , ",
                      style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
                  Text("67 Track",
                      style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 60, right: 60),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                        "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit.Turpis Adipiscing Vestibulum Orci Enim.Nascetur Vitae",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff838383),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  )),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 15,
                  ),
                  child: Text(
                    "Albums",
                    style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                width: 460,
                height: 200,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 140,
                              height: 135,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/Rectangle16.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lilbubblegum",
                              style: TextStyle(
                                  color: Color(0xff3A3A3A),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
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
                      "Songs",
                      style: TextStyle(
                          color: Color(0xff3A3A3A),
                          fontSize: 16,
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
                                  size: 45,
                                  color: Color(0xffE6E6E6),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Don't Smile At Me",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Billie Eilish",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Text(
                                  "5:33",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(
                                  Icons.favorite_outline_rounded,
                                  size: 30,
                                  color: Color(0xffE6E6E6),
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
    );
  }
}
