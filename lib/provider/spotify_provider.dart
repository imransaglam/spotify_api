import 'package:flutter/cupertino.dart';
import 'package:spotifyapi/models/artist_album_response.dart';
import 'package:spotifyapi/models/artist_response.dart';

import 'package:spotifyapi/models/categories_response.dart';
import 'package:spotifyapi/models/profils_response.dart';
import 'package:spotifyapi/models/users_respnse.dart';


import 'package:spotifyapi/services/apiservices.dart';

class SpotifyProvider with ChangeNotifier{

  ArtistResponse artistResponse=ArtistResponse();
  ArtistAlbumResponse artistAlbumResponse=ArtistAlbumResponse();
  UserResponse userResponse= UserResponse();
  CategoriesResponse categoryResponse= CategoriesResponse();
  ProfileResponse profileResponse=ProfileResponse();
  bool isLoading=false;


 getArtistData(context) async {
    isLoading=true;
    artistResponse=(await getCurrentArtistData())!;
    isLoading=false;
    notifyListeners();
  }

 getArtistAlbumData(context) async {
    isLoading=true;
    artistAlbumResponse=(await getCurrentArtistAlbumData())!;
    isLoading=false;
    notifyListeners();
  }

  getCategoryData(context) async {
    isLoading=true;
    categoryResponse=(await getCurrentCategoriesData())!;
    isLoading=false;
    notifyListeners();
  }

  getProfileData(context) async {
    isLoading=true;
    profileResponse=(await getCurrentProfileData())!;
    isLoading=false;
    notifyListeners();
  }
   getUserData(context) async {
    isLoading=true;
    userResponse=(await getCurrentUserData())!;
    //print(userResponse.href.toString());
    isLoading=false;
    notifyListeners();
  }

}