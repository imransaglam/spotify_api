import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:spotifyapi/provider/profil_provider.dart';
import 'package:spotifyapi/provider/user_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  UserProvider? usProvider;
  ProfileProvider? profProvider;
  void initState() {
    usProvider = Provider.of<UserProvider>(context, listen: false);
    usProvider!.getUserData(context);
     profProvider = Provider.of<ProfileProvider>(context, listen: false);
    profProvider!.getProfilData(context);

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
                          Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Color(0xff545454),
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
                         builder: (context, ProfileProvider profileProvider, child) =>profileProvider?.isLoading==true?CircularProgressIndicator():
                        Container(
                          width: 93,
                          height: 93,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(profileProvider.response.images![0].url.toString()),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(56),
                                bottomRight: Radius.circular(56),
                              )),
                        ),
                      ),
                    ),
                    Text("soroushnrorozyui@gmail.com",
                        style: TextStyle(
                            color: Color(0xff222222),
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Soroushnrz",
                          style: TextStyle(
                              color: Color(0xff222222),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("243",
                            style: TextStyle(
                                color: Color(0xff222222),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Text("188",
                            style: TextStyle(
                                color: Color(0xff222222),
                                fontSize: 20,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Followers",
                            style: TextStyle(
                                color: Color(0xff222222),
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        Text("Follows",
                            style: TextStyle(
                                color: Color(0xff222222),
                                fontSize: 14,
                                fontWeight: FontWeight.w400))
                      ],
                    )
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
                  builder: (context, UserProvider userProvider, child) =>
                      userProvider?.isLoading == true
                          ? CircularProgressIndicator()
                          : Container(
                          
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount:
                                      userProvider.response.items!.length,
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
                                                  image: NetworkImage(userProvider
                                                          .response
                                                          .items![index]
                                                          .images!
                                                          .isEmpty
                                                      ? "https://play-lh.googleusercontent.com/WB0j9PZGUofgwNbJ8Jm0-v03FIwBMj5Ovi5eso8xaBVTh6FGOyc4xyNjwMkTziKgkBs"
                                                      : userProvider
                                                          .response
                                                          .items![index]
                                                          .images![0]
                                                          .url
                                                          .toString()),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                          ),
                                          title: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                userProvider
                                                    .response.items![index].name
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                userProvider
                                                    .response
                                                    .items![index]
                                                    .owner!
                                                    .displayName
                                                    .toString(),
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
                                      // Container(
                                      //   height: 50,
                                      //   child: Row(
                                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //     children: [
                                      //     Container(
                                      //     width: 56,
                                      //     height: 56,
                                      //     decoration: BoxDecoration(
                                      //         image: DecorationImage(
                                      //           image:NetworkImage(userProvider.response.items![index].images!.isEmpty?"https://play-lh.googleusercontent.com/WB0j9PZGUofgwNbJ8Jm0-v03FIwBMj5Ovi5eso8xaBVTh6FGOyc4xyNjwMkTziKgkBs":  userProvider.response.items![index].images![0].url.toString()),
                                      //           fit: BoxFit.cover,
                                      //         ),
                                      //         borderRadius: BorderRadius.circular(14)
                                      //         ),
                                      //   ),
                                      //       Column(
                                      //         crossAxisAlignment: CrossAxisAlignment.start,
                                      //         children: [
                                      //           Text(

                                      //             userProvider.response.items![index].name.toString(),
                                      //             style: TextStyle(
                                      //                 color: Colors.black,
                                      //                 fontSize: 16,
                                      //                 fontWeight: FontWeight.bold),
                                      //           ),
                                      //           Text(
                                      //             userProvider.response.items![index].owner!.displayName.toString(),
                                      //             style: TextStyle(

                                      //                 color: Colors.black,
                                      //                 fontSize: 12,
                                      //                 fontWeight: FontWeight.w400),
                                      //           )
                                      //         ],
                                      //       ),
                                      //       // Text(
                                      //       //   "5:33",
                                      //       //   style: TextStyle(
                                      //       //       color: Colors.black,
                                      //       //       fontSize: 15,
                                      //       //       fontWeight: FontWeight.w400),
                                      //       // ),
                                      //       Icon(
                                      //         Icons.more_horiz_rounded,
                                      //         size: 30,
                                      //         color: Color(0xffA68C8C),
                                      //       )
                                      //     ],
                                      //   ),
                                      // )
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
