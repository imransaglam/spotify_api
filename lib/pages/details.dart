import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:spotifyapi/pages/homescreen.dart';
import 'package:spotifyapi/utilities/convert_to_time.dart';

import '../provider/spotify_provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
    @override
     SpotifyProvider ?artistalbProvider;
  void initState(){
    artistalbProvider=Provider.of<SpotifyProvider>(context,listen:false);
      artistalbProvider!.getArtistAlbumData(context);
      artistalbProvider!.getArtistData(context);
      artistalbProvider!.getArtistSongData(context);
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
              Stack(
                children: [
                  Consumer(
                    builder: (context, SpotifyProvider artistProvider, child) =>artistProvider.iLoadingartistResponse==true?CircularProgressIndicator():
                     Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(artistProvider.artistResponse.images![0].url.toString()),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(69),
                            bottomRight: Radius.circular(69),
                          )),
                    ),
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
                child: Consumer(
                  builder: (context, SpotifyProvider artistProvider, child) =>artistProvider.iLoadingartistResponse==true?CircularProgressIndicator():
                 Container(
                      alignment: Alignment.center,
                      child: Text(
                           artistProvider.artistResponse.name.toString(),
                        style: TextStyle(
                            color: Color(0xff222222),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Consumer(
                builder: (context, SpotifyProvider artistProvider, child) =>artistProvider.iLoadingartistResponse==true?CircularProgressIndicator():
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${artistProvider.artistResponse.followers!.total.toString()} Followers" ,
                        style: TextStyle(
                            color: Color(0xff393939),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                    Text(" , ",
                        style: TextStyle(
                            color: Color(0xff393939),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                    Text("${artistProvider.artistResponse.popularity.toString()} Popularities" ,
                        style: TextStyle(
                            color: Color(0xff393939),
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 60, right: 60),
                  child: Consumer(
                    builder: (context, SpotifyProvider artistProvider, child) =>artistProvider.iLoadingartistResponse==true?CircularProgressIndicator():
                     Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${artistProvider.artistResponse.genres![0].toString()} , ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff838383),
                                fontSize: 13,
                                fontWeight: FontWeight.w400)),
                                 Text(
                            "${artistProvider.artistResponse.genres![1].toString()} , ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff838383),
                                fontSize: 13,
                                fontWeight: FontWeight.w400)),
                                 Text(
                            "${artistProvider.artistResponse.genres![2].toString()} , ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff838383),
                                fontSize: 13,
                                fontWeight: FontWeight.w400)),
                                 Text(
                            "${artistProvider.artistResponse.genres![3].toString()} .",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff838383),
                                fontSize: 13,
                                fontWeight: FontWeight.w400)),
                                
                                ],
                      ),
                    ),
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
              Consumer(
                builder: (context, SpotifyProvider artistAlbumProvider, child) =>artistAlbumProvider.iLoadingartistAlbumResponse==true?CircularProgressIndicator():
               Container(
                  width: 460,
                  height: 200,
                  child: ListView.builder(
                      itemCount: artistAlbumProvider.artistAlbumResponse.items!.length,
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
                                      image:NetworkImage(artistAlbumProvider.artistAlbumResponse.items![index].images![0].url.toString()),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                artistAlbumProvider.artistAlbumResponse.items![index].name.toString(),
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
              Consumer(
           builder: (context, SpotifyProvider artistSongsProvider, child) =>artistSongsProvider.iLoadingartistSongResponse==true?CircularProgressIndicator():
                 Container(
                  width:MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: artistSongsProvider.artistSongResponse.tracks!.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Container(
                              height: 60,
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
                                      Container(
                                        width: 150,
                                        child: Text(
                                          artistSongsProvider.artistSongResponse.tracks![index].album!.name.toString(),
                                         overflow: TextOverflow.ellipsis,
                                         maxLines: 2,
                                         style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child: Text(
                                          artistSongsProvider.artistSongResponse.tracks![index].artists![0].name.toString(),
                                          overflow: TextOverflow.ellipsis,
                                         maxLines: 1,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    ConvertToTime().milisecontToSecondAndMinute(artistSongsProvider.artistSongResponse.tracks![index].durationMs),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
