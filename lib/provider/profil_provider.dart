import 'package:flutter/cupertino.dart';
import 'package:spotifyapi/models/profiles_response.dart';
import 'package:spotifyapi/services/apiservices.dart';

class ProfileProvider with ChangeNotifier{
  ProfileResponse response= ProfileResponse();
  bool isLoading=false;



  getProfilData(context) async {
    isLoading=true;
    response=(await getCurrentData3())!;
    //print(response.name);
    isLoading=false;
    notifyListeners();
  }

}