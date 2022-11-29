import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:spotifyapi/pages/details.dart';

import 'package:spotifyapi/provider/spotify_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  SpotifyProvider? spotProvider;

  void initState() {
    spotProvider = Provider.of<SpotifyProvider>(context, listen: false);
    spotProvider?.getProfileData(context);
    spotProvider?.getUserData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(69),
                      bottomRight: Radius.circular(69),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Color(0xff545454),
                            ),
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                                color: Color(0xff383838),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Color(0xffA68C8C),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Consumer(
                        builder:(context, SpotifyProvider profileProvider, child) =>profileProvider.iLoadingprofileResponse==true?CircularProgressIndicator():
                         FadeIn(
                           child: Container(
                            width: 93,
                            height: 93,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(profileProvider.profileResponse.images![0].url.toString()),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(46.5
                                )),
                                                 ),
                         ),
                      ),
                    ),
                    Consumer(
                      builder:(context, SpotifyProvider profileProvider, child) =>profileProvider.iLoadingprofileResponse==true?CircularProgressIndicator():
                     Text(profileProvider.profileResponse.type.toString(),
                          style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Consumer(
                        builder:(context, SpotifyProvider profileProvider, child) =>profileProvider.iLoadingprofileResponse==true?CircularProgressIndicator():
                       Text(profileProvider.profileResponse.displayName.toString(),
                            style: TextStyle(
                                color: Color(0xff222222),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Consumer(
                       builder:(context, SpotifyProvider profileProvider, child) =>profileProvider.iLoadingprofileResponse==true?CircularProgressIndicator():
                      Text(profileProvider.profileResponse.followers!.total.toString(),
                          style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text("Follows",
                        style: TextStyle(
                            color: Color(0xff222222),
                            fontSize: 14,
                            fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, top: 20, bottom: 15, right: 15),
                child: Text("PUBLIC PLAYLISTS",
                    style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15),
                child: Consumer(
                  builder:(context, SpotifyProvider userProvider, child) =>userProvider.iLoadinguserResponse==true?CircularProgressIndicator():
                   Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount:
                                      userProvider.userResponse.items?.length,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: ((context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 20, bottom: 20),
                                      child: Container(
                                        child: ListTile(
                                          leading: Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    userProvider.userResponse.items![index].images!.isEmpty?
                                                      "https://play-lh.googleusercontent.com/WB0j9PZGUofgwNbJ8Jm0-v03FIwBMj5Ovi5eso8xaBVTh6FGOyc4xyNjwMkTziKgkBs"
                                                      :userProvider.userResponse.items![index].images![0].url.toString()
                                                      ),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                          ),
                                          title: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                userProvider.userResponse.items![index].name.toString(),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                userProvider.userResponse.items![index].owner!.displayName.toString(),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                          trailing: Icon(
                                            Icons.more_horiz_rounded,
                                            size: 30,
                                            color: Color(0xffA68C8C),
                                          ),
                                        ),
                                      ),
                                    );
                                  })),
                            ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
