import 'package:flutter/cupertino.dart';
import 'package:spotifyapi/models/artist_album_response.dart';
import 'package:spotifyapi/models/artist_response.dart';
import 'package:spotifyapi/models/artist_song_response.dart';

import 'package:spotifyapi/models/categories_response.dart';
import 'package:spotifyapi/models/new_releases_response.dart';
import 'package:spotifyapi/models/profils_response.dart';
import 'package:spotifyapi/models/track_response.dart';
import 'package:spotifyapi/models/users_respnse.dart';


import 'package:spotifyapi/services/apiservices.dart';

class SpotifyProvider with ChangeNotifier{

  TrackResponse trackResponse=TrackResponse();
  NewReleasesResponse newReleasesResponse=NewReleasesResponse();
  ArtistSongResponse artistSongResponse=ArtistSongResponse();
  ArtistResponse artistResponse=ArtistResponse();
  ArtistAlbumResponse artistAlbumResponse=ArtistAlbumResponse();
  UserResponse userResponse= UserResponse();
  CategoriesResponse categoryResponse= CategoriesResponse();
  ProfileResponse profileResponse=ProfileResponse();


  

  bool iLoadingtrackResponse=true;
  bool iLoadingnewReleasesResponse=true;
  bool iLoadingartistSongResponse=true;
  bool iLoadingartistResponse=true;
  bool iLoadingartistAlbumResponse=true;
  bool iLoadinguserResponse=true;
  bool iLoadingcategoryResponse=true;
  bool iLoadingprofileResponse=true;

  




  getTrackData(context) async {
    iLoadingtrackResponse=true;
    trackResponse=(await getCurrentTrackData())!;
    iLoadingtrackResponse=false;
    notifyListeners();
  }

  getNewReleasesData(context) async {
    iLoadingnewReleasesResponse=true;
    newReleasesResponse=(await getCurrentNewReleasesData())!;
    iLoadingnewReleasesResponse=false;
    notifyListeners();
  }

getArtistSongData(context) async {
    iLoadingartistSongResponse=true;
    artistSongResponse=(await getCurrentArtistSongData())!;
    iLoadingartistSongResponse=false;
    notifyListeners();
  }


 getArtistData(context) async {
    iLoadingartistResponse=true;
    artistResponse=(await getCurrentArtistData())!;
    iLoadingartistResponse=false;
    notifyListeners();
  }

 getArtistAlbumData(context) async {
    iLoadingartistAlbumResponse=true;
    artistAlbumResponse=(await getCurrentArtistAlbumData())!;
    iLoadingartistAlbumResponse=false;
    notifyListeners();
  }

  getCategoryData(context) async {
    iLoadingcategoryResponse=true;
    categoryResponse=(await getCurrentCategoriesData())!;
    iLoadingcategoryResponse=false;
    notifyListeners();
  }

  getProfileData(context) async {
    iLoadingprofileResponse=true;
    profileResponse=(await getCurrentProfileData())!;
    iLoadingprofileResponse=false;

    notifyListeners();
  }
   getUserData(context) async {
    iLoadinguserResponse=true;
    userResponse=(await getCurrentUserData())!;
    //print(userResponse.href.toString());
    iLoadinguserResponse=false;
    notifyListeners();
  }

}