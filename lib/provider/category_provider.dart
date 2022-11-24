import 'package:flutter/cupertino.dart';
import 'package:spotifyapi/models/categories_response.dart';
import 'package:spotifyapi/services/apiservices.dart';

class CategoryProvider with ChangeNotifier{
  CategoriesResponse response= CategoriesResponse();
  bool isLoading=false;



  getCategoryData(context) async {
    isLoading=true;
    response=(await getCurrentData())!;
    //print(response.name);
    isLoading=false;
    notifyListeners();
  }

}