import 'dart:convert';
import 'package:http/http.dart' as http;
import '../api/malatanglog/v1/malatanglog.pb.dart';

class ApiService {
  final String baseUrl;
  final Future<String?> Function()? tokenProvider;

  ApiService({this.baseUrl = 'http://localhost:8080', this.tokenProvider});

  Future<Map<String, String>> _getHeaders([
    Map<String, String>? additionalHeaders,
  ]) async {
    final headers = <String, String>{};
    if (additionalHeaders != null) {
      headers.addAll(additionalHeaders);
    }

    if (tokenProvider != null) {
      final token = await tokenProvider!();
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
    }
    return headers;
  }

  Future<List<Shop>> getShops({
    String query = '',
    double? lat,
    double? lng,
    double radiusMeters = 5000,
  }) async {
    final queryParams = <String, String>{
      'query': query,
      'radius_meters': radiusMeters.toString(),
    };
    if (lat != null && lng != null) {
      queryParams['user_location.lat'] = lat.toString();
      queryParams['user_location.lng'] = lng.toString();
    }

    final uri = Uri.parse(
      '$baseUrl/v1/shops',
    ).replace(queryParameters: queryParams);
    final response = await http.get(uri, headers: await _getHeaders());

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final getShopsResponse = GetShopsResponse()..mergeFromProto3Json(data);
      return getShopsResponse.shops;
    } else {
      throw Exception('Failed to load shops: ${response.statusCode}');
    }
  }

  Future<Review> createReview(CreateReviewRequest request) async {
    final uri = Uri.parse('$baseUrl/v1/reviews');
    final response = await http.post(
      uri,
      headers: await _getHeaders({'Content-Type': 'application/json'}),
      body: json.encode(request.toProto3Json()),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Review()..mergeFromProto3Json(data);
    } else {
      throw Exception('Failed to create review: ${response.statusCode}');
    }
  }

  Future<Review> updateReview(UpdateReviewRequest request) async {
    final uri = Uri.parse('$baseUrl/v1/reviews/${request.id}');
    final response = await http.put(
      uri,
      headers: await _getHeaders({'Content-Type': 'application/json'}),
      body: json.encode(request.toProto3Json()),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Review()..mergeFromProto3Json(data);
    } else {
      throw Exception('Failed to update review: ${response.statusCode}');
    }
  }

  Future<void> deleteReview(DeleteReviewRequest request) async {
    final uri = Uri.parse('$baseUrl/v1/reviews/${request.id}');
    final response = await http.delete(uri, headers: await _getHeaders());

    if (response.statusCode != 200) {
      throw Exception('Failed to delete review: ${response.statusCode}');
    }
  }

  Future<List<Review>> listReviews() async {
    final uri = Uri.parse('$baseUrl/v1/reviews');
    final response = await http.get(uri, headers: await _getHeaders());

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final listReviewsResponse = ListReviewsResponse()
        ..mergeFromProto3Json(data);
      return listReviewsResponse.reviews;
    } else {
      throw Exception('Failed to load reviews: ${response.statusCode}');
    }
  }
}
