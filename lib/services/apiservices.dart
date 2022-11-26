import 'package:dio/dio.dart';

import 'package:spotifyapi/models/profils_response.dart';
import 'package:spotifyapi/models/users_respnse.dart';



import '../models/categories_response.dart';

final Dio _dio = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQDTSsMe34qgtoZ0IPTfjfc_g-R-4SZBpOmnog-oZoSAlBDgj87yNfQMJqgxZ-RM6oxZrPDetMhiTImEXKPs7ZOcrwkdIyBvgn_dz4n8kbaI9YTq51Hih9sBbNax4JnDuF0WLiMcM1SamT7sq7BJNdrxiz6gXrOsPqNGAebn3GCqO6-syhOsDneiDX77qHBxmsCeZkJpBpr0vlwhYp-3DM-zCQfCb0WasougMx5MY2OzIv3YN52OwMiqorj3estiS8Piana5CUmcjWPWcgIjSD1L-MhKtsUgsrDot8JfiOLj"
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
Future<ProfileResponse?> getCurrentData3() async {
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
Future<UserResponse?> getCurrentData2() async {
  UserResponse usersResponse;
  try {
    final response = await _dio2
        .get("users/313le63oml7u4i6b6lvclkx3eqxa/playlists?limit=10&offset=5");
    usersResponse = UserResponse.fromJson(response.data);

    return usersResponse;
  } catch (e) {}

}



