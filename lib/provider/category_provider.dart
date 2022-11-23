import 'package:flutter/cupertino.dart';
import 'package:spotifyapi/models/items.dart';

class CategoryProvider with ChangeNotifier{
  Items response=Items();
  bool isLoading=true;
  getCategoryData(context) async{
    isLoading=true;
    response=(await getCategoryData(context))!;
    //print(response.name);
    isLoading=false;
    notifyListeners();
  }
}