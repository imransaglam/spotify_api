import 'package:dio/dio.dart';
import 'package:spotifyapi/models/artist_album_response.dart';
import 'package:spotifyapi/models/artist_response.dart';

import 'package:spotifyapi/models/profils_response.dart';
import 'package:spotifyapi/models/users_respnse.dart';



import '../models/categories_response.dart';


final Dio _dio5 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQA6IMI2srPugPd5UgBSGwhEx8IUn-rA2k9CzqyrexD7cX1bFug9Xz5njAPa3GNRYy_b5c55jk3XDJkELsGPZkAhf8Wk8g8J7l1Dtx4NjNco1lF98GIyPjIxvLjpa6syPNL0AZd-vQ2NN4__y9h2NPGofIXnN5bgPGOKGuxXYw7r4jsgaWnlJmzI5mxpJQK7g3WElKgCSSUKc-KkdYJVUPuX9xmRt16lM-asWff8nOHyYgQCJl50hLqAjJY97kKHafsfcvn_Kwe9nKDIQydSEOh746tYMce9lCrPtfsxFEEY"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<ArtistResponse?> getCurrentArtistData() async {
  ArtistResponse artistResponse;
  try {
    final response = await _dio5
        .get("artists/0TnOYISbd1XYRBk9myaseg");
    artistResponse = ArtistResponse.fromJson(response.data);

    return artistResponse;
  } catch (e) {}

}


final Dio _dio4 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQCck9F4eh7-dGh7KQOCgtjagwHuQgzBs4bS4DbSyQh8cCB9XGwdIJcLXfC9o2U_CS3xEmH9eggogKYFamXxdGHQDjHp3asmAAK24ZWJmLbbKdya20v18o3NQMJfRtFz3K7XeK-bMDvCdVV5zBuirNX_kU_HRQZKS64TVVZLd_mJy9tx0rJNrWmoWSlUG4arZZawYMPAhuEpS1elo9-YYnawWqJk_7KsvyryU-ON2S0z5VuZPH4h8Z_Y5Il7evLih8o6ElHvAnbOeti09Ub7VromnWKLDAOkvbVMcC_-UmCS"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<ArtistAlbumResponse?> getCurrentArtistAlbumData() async {
  ArtistAlbumResponse artistAlbumResponse;
  try {
    final response = await _dio4
        .get("artists/0TnOYISbd1XYRBk9myaseg/albums?include_groups=single%2Cappears_on&market=TR&limit=10&offset=5");
    artistAlbumResponse = ArtistAlbumResponse.fromJson(response.data);

    return artistAlbumResponse;
  } catch (e) {}

}


final Dio _dio = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQDTSsMe34qgtoZ0IPTfjfc_g-R-4SZBpOmnog-oZoSAlBDgj87yNfQMJqgxZ-RM6oxZrPDetMhiTImEXKPs7ZOcrwkdIyBvgn_dz4n8kbaI9YTq51Hih9sBbNax4JnDuF0WLiMcM1SamT7sq7BJNdrxiz6gXrOsPqNGAebn3GCqO6-syhOsDneiDX77qHBxmsCeZkJpBpr0vlwhYp-3DM-zCQfCb0WasougMx5MY2OzIv3YN52OwMiqorj3estiS8Piana5CUmcjWPWcgIjSD1L-MhKtsUgsrDot8JfiOLj"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<CategoriesResponse?> getCurrentCategoriesData() async {
  CategoriesResponse categoriesResponse;
  try {
    final response = await _dio
        .get("browse/categories?country=TR&locale=tr_tr&offset=5&limit=10");
    categoriesResponse = CategoriesResponse.fromJson(response.data);

    return categoriesResponse;
  } catch (e) {}

}
final Dio _dio3 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQAxpkg6f5niauwLcT8aFxqTc4D0r8fVsZeVxG6TpajknzboUhkfvvEaOT4IbuzHCyPEPQBEX5DC3OmCyIx9nqUwR5VqH73b-tGXJURfUdLhiaNwTgz_GPiRNemXZmiP3pO790uX3ZrLP5HV8qCZBPhjJJ6Gk77mi5FrBrR4PQIlJbWPRjN1id8MKBqftzKz_MfhJBOx1FVWfEYP4sOE5EvYgQX7HTRcu2iRZ5HfRVqMOCmWxFI1locqZoOoH7yswJjIDiywq4BgGycRVy4n14Q8AmASxOqDcCATa921tB5-"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<ProfileResponse?> getCurrentProfileData() async {
  ProfileResponse profilesResponse;
  try {
    final response = await _dio3
        .get("users/313le63oml7u4i6b6lvclkx3eqxa");
    profilesResponse = ProfileResponse.fromJson(response.data);

    return profilesResponse;
  } catch (e) {}

}
final Dio _dio2 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQD1iSfd5bvAQFyYpaTjaNNPftXCG0HkM_wlvD2eZq72ZmN8xshtvFDI8kh0dPyOdANkTkWJ4hzbnPXHw6iQW55hhdObr1gF06Z5zr6NTL-xOxgzeFrk4IO5x5pgrGwnVeG9mF0xEh83hVzoAvM9rgaYyjYZGNFTjcp9wvaO0iPogbCT7AbobZ3a_7FHe2bZJbV0hfVn4VDSYdQlu7nmsRFL0OjyGMxGDQXrjm_4BGiLjYMcXpkmNg9wnXMU7UZty39gmiA6PC-qrHgPcp9svm9Jes96uiQ"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<UserResponse?> getCurrentUserData() async {
  UserResponse usersResponse;
  try {
    final response = await _dio2
        .get("users/313le63oml7u4i6b6lvclkx3eqxa/playlists?limit=10&offset=5");
    usersResponse = UserResponse.fromJson(response.data);

    return usersResponse;
  } catch (e) {}

}



