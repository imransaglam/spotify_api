import 'package:flutter/cupertino.dart';

import 'package:spotifyapi/models/categories_response.dart';
import 'package:spotifyapi/models/profils_response.dart';
import 'package:spotifyapi/models/users_respnse.dart';


import 'package:spotifyapi/services/apiservices.dart';

class SpotifyProvider with ChangeNotifier{

 
  UserResponse userResponse= UserResponse();
  CategoriesResponse categoryResponse= CategoriesResponse();
  ProfileResponse profileResponse=ProfileResponse();
  bool isLoading=false;


  getCategoryData(context) async {
    isLoading=true;
    categoryResponse=(await getCurrentData())!;
    isLoading=false;
    notifyListeners();
  }

  getProfileData(context) async {
    isLoading=true;
    profileResponse=(await getCurrentData3())!;
    isLoading=false;
    notifyListeners();
  }
   getUserData(context) async {
    isLoading=true;
    userResponse=(await getCurrentData2())!;
    //print(userResponse.href.toString());
    isLoading=false;
    notifyListeners();
  }

}