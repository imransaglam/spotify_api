import 'package:dio/dio.dart';
import 'package:spotifyapi/models/profiles_response.dart';
import 'package:spotifyapi/models/users_response.dart';

import '../models/categories_response.dart';

final Dio _dio = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQDoNQEeQk9vN_21I2Jrfj2rQ8j-dVh0gYvcKuJVX4TEK2jwLTpG435VQT7SaFyZ2NZwagcfRxLQjF9nZfYg_CRGOIFMBRFos1xqZiNKBwPnm3coediFff7qmaCbMfadFvuXNaiKAEmLNtia38M6nuelmgEBUOtuKYSLTvKsEzNHy1Eh8fDqeierQyK1iJcotkglytDQau0fB8GIUfIZNC9ujAv0JEBTZPSN4YuBIViYzx2wRU49Q4ExBVgnyInuzw2Gcg7_bW3iGrVEjXaTwam9FkcKZ9A4dYVU6GItThix"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<CategoriesResponse?> getCurrentData() async {
  CategoriesResponse categoriesResponse;
  try {
    final response = await _dio
        .get("browse/categories?country=TR&locale=tr_tr&offset=5&limit=10");
    categoriesResponse = CategoriesResponse.fromJson(response.data);

    return categoriesResponse;
  } catch (e) {}
  return null;
}
final Dio _dio2 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQBxKRbMWXlRCXbuwD3QarCJaOX2xTyK5hLf1j64XdYYNkRQ-MkXqKshRGmucGpR82eZhZazGdYfvPGrHoqo4ix_IJ1bSIzrxUq7f6EZBOmlhfuS_hY0P-J-RyA5K-cvBBZ4ztU8bMjy06Y-Ieut3a00wV-LwujIkCDlB8pqo8XsdpcXRyiHkC6VKNUZU2goK6P2jpK1FgDX5iIamOGqQSW4FIsL7gpoh-OSrByLhJudZYUGjpCmrabXClsZz9wAbipg5bt3o0l2y1do0xsalDpR9Sbn8fE"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<UserResponse?> getCurrentData2() async {
  UserResponse usersResponse;
  try {
    final response = await _dio2
        .get("users/smedjan/playlists?limit=10&offset=5");
    usersResponse = UserResponse.fromJson(response.data);

    return usersResponse;
  } catch (e) {}
  return null;
}
final Dio _dio3 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "BQBe_0xGkn4aRnGrxLJDDmz3l4uOeipf2KH0E_O9WXnkxPZczxSc23WTPcB9epftWwggKeeFhpA0C3ltjKEV6N3DFILM663B7y0Ry8YOO_Da4sUHh5Zu1SUFOqNBj4lT7X790FE1AFppd9f2HxvzZH45f3u8dwqC4QMAswDoSzxEFbNfdDr2LYH_hYTDoJmon1sO4JgP_NC6_WBsYmbkhFveg4MfAE5lDk5hph_GNj6sFrhY-Xz1S9dDzv7gu4_hNnX8slILznj5ksTLZSE_5raM74JFf7vwzX3BiVrGTN4b"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<ProfileResponse?> getCurrentData3() async {
  ProfileResponse profilesResponse;
  try {
    final response = await _dio3
        .get("users/31ou32ihswad2dohj6rgd3hp7gla");
    profilesResponse = ProfileResponse.fromJson(response.data);

    return profilesResponse;
  } catch (e) {}
  return null;
}