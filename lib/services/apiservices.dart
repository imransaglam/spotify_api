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
        " Bearer BQCgjiUCHK910tEqLZg-3rELmTOmhUhjX6IRvty5w6rVtzp4baNOccuWWQEEJARKdmL98w1zYgnTf9WujTs19morkxZPGOGIZT9_FHeLJJ3dE6ehmpzJ5W-Gdu-vqCT6an-4pA-MXwqJZz3Ke-WrY35TOVfkDR0UZmKBLIj846RoqL34JoNMuV1rA8CgsllQ_6qcQ-V0zXk7kUXqScnkH76y-YZdWk1qhhgXY0lu8z1uhbKc7gDOA3BEciaz6fGQtfpADwpRV2MmDJkmTV68BM9GyHzmYvSxIjJMLS2kZQwi"
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
        " Bearer BQCgjiUCHK910tEqLZg-3rELmTOmhUhjX6IRvty5w6rVtzp4baNOccuWWQEEJARKdmL98w1zYgnTf9WujTs19morkxZPGOGIZT9_FHeLJJ3dE6ehmpzJ5W-Gdu-vqCT6an-4pA-MXwqJZz3Ke-WrY35TOVfkDR0UZmKBLIj846RoqL34JoNMuV1rA8CgsllQ_6qcQ-V0zXk7kUXqScnkH76y-YZdWk1qhhgXY0lu8z1uhbKc7gDOA3BEciaz6fGQtfpADwpRV2MmDJkmTV68BM9GyHzmYvSxIjJMLS2kZQwi"
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
        " Bearer BQCgjiUCHK910tEqLZg-3rELmTOmhUhjX6IRvty5w6rVtzp4baNOccuWWQEEJARKdmL98w1zYgnTf9WujTs19morkxZPGOGIZT9_FHeLJJ3dE6ehmpzJ5W-Gdu-vqCT6an-4pA-MXwqJZz3Ke-WrY35TOVfkDR0UZmKBLIj846RoqL34JoNMuV1rA8CgsllQ_6qcQ-V0zXk7kUXqScnkH76y-YZdWk1qhhgXY0lu8z1uhbKc7gDOA3BEciaz6fGQtfpADwpRV2MmDJkmTV68BM9GyHzmYvSxIjJMLS2kZQwi"
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
        " Bearer BQCgjiUCHK910tEqLZg-3rELmTOmhUhjX6IRvty5w6rVtzp4baNOccuWWQEEJARKdmL98w1zYgnTf9WujTs19morkxZPGOGIZT9_FHeLJJ3dE6ehmpzJ5W-Gdu-vqCT6an-4pA-MXwqJZz3Ke-WrY35TOVfkDR0UZmKBLIj846RoqL34JoNMuV1rA8CgsllQ_6qcQ-V0zXk7kUXqScnkH76y-YZdWk1qhhgXY0lu8z1uhbKc7gDOA3BEciaz6fGQtfpADwpRV2MmDJkmTV68BM9GyHzmYvSxIjJMLS2kZQwi"
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
        " Bearer BQCgjiUCHK910tEqLZg-3rELmTOmhUhjX6IRvty5w6rVtzp4baNOccuWWQEEJARKdmL98w1zYgnTf9WujTs19morkxZPGOGIZT9_FHeLJJ3dE6ehmpzJ5W-Gdu-vqCT6an-4pA-MXwqJZz3Ke-WrY35TOVfkDR0UZmKBLIj846RoqL34JoNMuV1rA8CgsllQ_6qcQ-V0zXk7kUXqScnkH76y-YZdWk1qhhgXY0lu8z1uhbKc7gDOA3BEciaz6fGQtfpADwpRV2MmDJkmTV68BM9GyHzmYvSxIjJMLS2kZQwi"
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
        " Bearer BQCgjiUCHK910tEqLZg-3rELmTOmhUhjX6IRvty5w6rVtzp4baNOccuWWQEEJARKdmL98w1zYgnTf9WujTs19morkxZPGOGIZT9_FHeLJJ3dE6ehmpzJ5W-Gdu-vqCT6an-4pA-MXwqJZz3Ke-WrY35TOVfkDR0UZmKBLIj846RoqL34JoNMuV1rA8CgsllQ_6qcQ-V0zXk7kUXqScnkH76y-YZdWk1qhhgXY0lu8z1uhbKc7gDOA3BEciaz6fGQtfpADwpRV2MmDJkmTV68BM9GyHzmYvSxIjJMLS2kZQwi"
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
        " Bearer BQCgjiUCHK910tEqLZg-3rELmTOmhUhjX6IRvty5w6rVtzp4baNOccuWWQEEJARKdmL98w1zYgnTf9WujTs19morkxZPGOGIZT9_FHeLJJ3dE6ehmpzJ5W-Gdu-vqCT6an-4pA-MXwqJZz3Ke-WrY35TOVfkDR0UZmKBLIj846RoqL34JoNMuV1rA8CgsllQ_6qcQ-V0zXk7kUXqScnkH76y-YZdWk1qhhgXY0lu8z1uhbKc7gDOA3BEciaz6fGQtfpADwpRV2MmDJkmTV68BM9GyHzmYvSxIjJMLS2kZQwi"
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
        " Bearer BQCgjiUCHK910tEqLZg-3rELmTOmhUhjX6IRvty5w6rVtzp4baNOccuWWQEEJARKdmL98w1zYgnTf9WujTs19morkxZPGOGIZT9_FHeLJJ3dE6ehmpzJ5W-Gdu-vqCT6an-4pA-MXwqJZz3Ke-WrY35TOVfkDR0UZmKBLIj846RoqL34JoNMuV1rA8CgsllQ_6qcQ-V0zXk7kUXqScnkH76y-YZdWk1qhhgXY0lu8z1uhbKc7gDOA3BEciaz6fGQtfpADwpRV2MmDJkmTV68BM9GyHzmYvSxIjJMLS2kZQwi"
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



