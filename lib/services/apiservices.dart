import 'package:dio/dio.dart';

import '../models/categories_response.dart';

final Dio _dio = Dio(BaseOptions(
  baseUrl: "https://api.spotify.com/v1/",
  headers: {
    "Authorization":
        "Bearer BQC9pDX4YfZdtREDYHTtThEvJUVjzaRBFN0IEmca15SGa6KmS7zzLAgweMG8M8TBwTT6mE-Qsv10eAGLE3mKihYrbLPvkFKPxYhUHBMtBngwddNlHHRztRdCTU93YivRD8jQW5DJ3q64KIDVEt73hhmiY5LUB5rmTDRzCw7dQnDnTDXMLiFvDynDGl9aVuHGvFOuwsfgVC7dfwAQYBXh3I62vTgCB0Z5NETUr7wnEkh69u6ZZ8xz7tRhAJKWwH_KY4hz_EePGEtCXBJJJZV6e5fwptlBbEn2OXPMZ76fziTc"
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
