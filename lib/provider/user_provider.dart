import 'package:flutter/cupertino.dart';
import 'package:spotifyapi/models/users_response.dart';
import 'package:spotifyapi/services/apiservices.dart';

class UserProvider with ChangeNotifier{
  UserResponse response= UserResponse();
  bool isLoading=false;



  getUserData(context) async {
    isLoading=true;
    response=(await getCurrentData2())!;
    //print(response.name);
    isLoading=false;
    notifyListeners();
  }

}