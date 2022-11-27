import 'package:dio/dio.dart';
import 'package:spotifyapi/models/artist_album_response.dart';
import 'package:spotifyapi/models/artist_response.dart';
import 'package:spotifyapi/models/artist_song_response.dart';
import 'package:spotifyapi/models/new_releases_response.dart';

import 'package:spotifyapi/models/profils_response.dart';
import 'package:spotifyapi/models/track_response.dart';
import 'package:spotifyapi/models/users_respnse.dart';



import '../models/categories_response.dart';


final Dio _dio8 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQAbS3HIgMP7EfZqxyQHI8waow9Ut3jm2bj1m-Pw3nVRn6GLgSfAJ4iu2Cr3k4Gt60--2fNG1_OwMsU8EiEMPHcP3XxWYIJtMarGbSoSLZKdfDdiVUsu5JWb1H3upILOshUsvOzS2_MwaqW5pEzomzneV0iWeC-mooP-Z6E-ksDkrSGM1UKQB2AYu0X2QA2vqpcaT5cbZy1WtTShHt3ZA7O5GJ-Yw811pRinKLF3x8f1UMcr6bIRRihuhkOnzlzsmSeqGZZSxg24GscfPtvwZ6vWX6yTgAmVyOV_0QWbwbwn"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<TrackResponse?> getCurrentTrackData() async {
  TrackResponse trackResponse;
  try {
    final response = await _dio8
        .get("tracks/11dFghVXANMlKmJXsNCbNl?market=TR");
    trackResponse = TrackResponse.fromJson(response.data);

    return trackResponse;
  } catch (e) {}

}


final Dio _dio7 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        " Bearer BQBUee-B0ryMC0XNmDww47NTh5rBgpfoQD5vKMRmP99Qm7Bc7v9B6iYvR4PoJ2xt52hzZpgK7ShTm1u5PSudYVb5tiX-uTpjBvY0CBdqovluq41aYt47YacsKMd6KWmA_otwnGQ2E0zwPceBgh4Z8J8wcVw63UQ4d_GFZkOSpqFrdsNO2R5KS6Lz0-m9fx-nYAJxz6AYwrnMCivGFXK6WNmNk7xqDtnnwZASUdG7h4ZLXUpNh2NmyvN4oIMHuF0Ajn8WUi3k7_dGlbWAMJ-Chm35Vwz92Ih-BOtwm2MBkjrR"
  },
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<NewReleasesResponse?> getCurrentNewReleasesData() async {
  NewReleasesResponse newReleasesResponse;
  try {
    final response = await _dio7
        .get("browse/new-releases?country=TR&limit=10&offset=5");
    newReleasesResponse = NewReleasesResponse.fromJson(response.data);

    return newReleasesResponse;
  } catch (e) {}

}


final Dio _dio6 = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQA-YqrfDhRMcvOH-Sz9Z2_Y3pZAPgIDaqQYSxyXK0I7nAg9ZOdjNzPt7pyd6DIU_yj4wwicD28UxxDz1FJkVbZBSJ7NHKZkqNRhb0bRHHUoiDdKClsch4sZajlOdFVUOYNHGtgv_WVvb34Zf_74dC2cKN9TkZP6BFh__H7CshYYcfL3gOyXC8LnN_9Nf9R2dk890bBQlGCvVkYtUbpvi7_wuqgvdEvRLRT4OOwl004ii0-3op6vroCQyp1NATrVBEFC5J8tIFGhFfKED6frecMae0UWwoqOKWGNIUmslupm"
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
        "Bearer BQBEiehalCKbXwh2eBUOOJShNSHq_4yU6uc-b4civZnsHRQZTGm1LUz-etK76Fz3TcW_szZCx9-VSLE_888t27XCvUix91gMyToyvQMPhFAlbbBO3PgkhzRPYP98pm97v5oGGX9YyozYtk3HnUEq8ZuKYEsnUa9lX0Qcig3GWeZVQsVWyWm2vr7MTl2aEb6e46h0jBZ1B7tNB1rT-kY4cKBGnuDYPmOHNVgM6dZ2bR7Aq1e-iocz2ghPNcTZjiRt23kwGS3awqg0TZ_HmPTx3FpKuYWwF4YwkHTZ3kcqn0Gg"
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
        " Bearer BQC1jyJye_ciMQmUJFv94GOpiFrbpgikPFHYGk3CYBx538P1SczdTbViS5j-v25gCDF88CbSND48xiSmXMCDnjlmZQHioyHHrEXxX5FbtxVCuZJmil6od4_4JrsS9o24vvm9-zy5sztSHHEj_0Ig_Y-INcNVG2ZWRmekxAiON0WWDXNPgmfF-vOtmiiw5uf0kr5ZnhYxYmU1DPq0DkR4G3jpv46BsiDtUyWjOv_aA-fE8b_ewszLHHAspY4JNQyKw5B7puDt0t2_oin0uwg20FlmDGM0SjhuZjDzKS_axwSF"
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
        "Bearer BQCscRWNoL_8BIXujotr7ycV7KkAH3rege8fhsQC2TQ6eRIBPoOz6N2fIH5wzTpNgdE7sKTJBV5SviEzj2CTw_vtA5szp6Fk8D-fxsE9H7WT9VTUzEcusbAfw6Jk_Tysa4ume_NtupPVUvXWuX96nyuLgG3U_7waUV4jjcyVnyiOzAFeh1lojFDnnbaAPgY7F9dEqqep-wWlKwhA4Ds9p5ULOeiavhAtW4pj_WNOzoJlgPI-dfahwLWSBJKr5S3TPpJkM-3LsJHGyz3rg5O1eQ6XoyVeVc62q8NFxc32kxZ4"
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
        "Bearer BQDbXPGSFh4wkF9u8mXZGSw5usGD699TUQMg3wGJ7VOfFYGWtTO0iWiyzxhKsDAXhNGgPTwL7pUhI7mzozmJKyWBDAQKvqlMw5uOSt9BQtJs_QHBHsldPkbSBWOgwe0MCgPbbYadpGDb_AnJ6ydHNmMFGETCnO_r9V4ukNR2hsYcdZ0CSLnEma1rs0ob1yhZGPPvsX3ZPXgio8JzTRb2s6CeK_hSvdPjOIFrNpSo1UvvLx1vjqL6XvlQS6WKvCojYWuo2HQzg5P1pvKe013jWJ1yEccwnt2jvpAzWEVUJD0f"
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
        "Bearer BQA-a4pgqhVvtD70Pn5R_eLhvGG9j5dF7AVpUxBpZr7LwMit4r8RBy7gIdv9AwmFNO3fdh-GB10ucM6gbwOvMH_P58kBzJSY3XfZQ6zkrhzhNmkNEBiOBmJpHnEjHSFO_MHVdkdJZxcWDrmYlnyinwUVlMmFutWHMZ8UHCmhqkhTOIIcFJD8cbYP_ZLTWR1eiO4t3XF2NmfTIaA_O8qIQqc45IyVzQKnySmzAgJItCijvpBABi4XfYAdDu3JZeV1yzLvcrI4McSiKKVO1LUT4t7-Zxd4mOk"
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



