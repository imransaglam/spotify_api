import 'package:dio/dio.dart';
import 'package:spotifyapi/models/artist_album_response.dart';
import 'package:spotifyapi/models/artist_response.dart';
import 'package:spotifyapi/models/artist_song_response.dart';

import 'package:spotifyapi/models/profils_response.dart';
import 'package:spotifyapi/models/users_respnse.dart';



import '../models/categories_response.dart';

final Dio _dio6 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQAotuYWhLYNVWTvqc5fbBhv37Y-i8Bp-heLAlhGuA4SLJQjrTiIjuClO7rPterApqkfKOiBv_qi-tKnlBi-gu1VEBkxEzRwoWkMLm0X9rQ2aq5-0hjHDCU0pYXETBZj1Hiw6IJz1gyoDUEK0a02OmKCI-SJA5M6PkQdPkQRUqvjVa6GBfp3iAZ4RKtWQ_jj_fhbkqOTUtmosnH1tKmn54QIMlBY0fUsGLaF0klq3C4nUUjiJBkRW-JBgqF5sZEDbHCHUKMNbV2KpL22UoOrc3TZoey0SZrYU3MkOOkgoApi"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<ArtistSongResponse?> getCurrentArtistSongData() async {
  ArtistSongResponse artistSongResponse;
  try {
    final response = await _dio6
        .get("artists/0TnOYISbd1XYRBk9myaseg/top-tracks?market=TR");
    artistSongResponse = ArtistSongResponse.fromJson(response.data);

    return artistSongResponse;
  } catch (e) {}

}



final Dio _dio5 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQCpYPAAVnmgijs18N0qj9kgLcbC1wB-VfQdrKB5nTo_keGG-PeVu-9A6v6ctVMwRXPkJRXJLaswypnqYRGQm6bBxQgOpM0HTbRHGGn1Ef_J4wjEvBRH0r_ZdgFRoq0bVsv0qcwlXoD-3qDiFhzyd_ah_HfjrW1Jh9uqw7VFGmJkyXSqvaw9m0Mwrrel10xNfM2kmzYGytVAGNCdGU8evh_A4qVt4NJzIG7xoD9tqD-jZ6C6QMmYw5nCthj3v0NWj2nEASeGk4T4uXODWvZpDeX87As_TRe1HZlFYLzy7rIa"
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
        "  Bearer BQBRlNr9okctF2_N7ywvxaqmkwr3ph8rAj2GNkKGK8_5w_CqkDeQmUzJog25jdbpZwKMoG4PFhFFM0oN5u3N4bAARyGgO2NWVapgJvwzWuB1rI9W69lHaMrFDZQdPp5yo56XaB2INm5KfQDNyxBgO7HenDL5PVIL0QYy6_9iInMueYVyU_Nl3-ZC7rzzndNC-ilkH6c65zxVUbklXwTNKIoSidr4YcItC-K1Y49TEEGYKHbv3FsYsm4y71D17T0p8ekqb2wouAsRGvetFB8M9w3Rm9t8a_tDO6WZCXJN7RWV"
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



