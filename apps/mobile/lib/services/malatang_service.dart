import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../api/malatanglog/v1/malatanglog.pb.dart';
import 'api_service.dart';

class MalatangService extends ChangeNotifier {
  final ApiService? apiService;
  List<Review> _records = [];
  List<Review> get records => _records;

  static const String _key = 'malatang_records';

  MalatangService({this.apiService});

  Future<void> loadRecords() async {
    // Try to load from backend first
    if (apiService != null) {
      try {
        final backendRecords = await apiService!.listReviews();
        _records = backendRecords;
        await _saveRecords(); // Update local cache
        notifyListeners();
        return;
      } catch (e) {
        debugPrint('Failed to load from backend: $e');
      }
    }

    // Fallback to local
    final prefs = await SharedPreferences.getInstance();
    final String? recordsJson = prefs.getString(_key);
    if (recordsJson != null) {
      final List<dynamic> decoded = jsonDecode(recordsJson);
      _records = decoded.map((e) {
        final record = Review();
        record.mergeFromProto3Json(e);
        return record;
      }).toList();
      notifyListeners();
    }
  }

  Future<void> addRecord(Review record) async {
    // Check if it exists for optimistic update
    final existingIndex = _records.indexWhere((r) => r.id == record.id);
    if (existingIndex != -1) {
      _records[existingIndex] = record;
    } else {
      _records.insert(0, record);
    }
    notifyListeners();

    if (apiService != null) {
      try {
        if (existingIndex != -1) {
          // Update
          final request = UpdateReviewRequest()
            ..id = record.id
            ..shopName = record.shopName
            ..soupType = record.soupType
            ..spicinessLevel = record.spicinessLevel
            ..orderStyle = UpdateReviewRequest_OrderStyle.valueOf(
              record.orderStyle.value,
            )!
            ..tasteTonkotsuGyukotsu = record.tasteTonkotsuGyukotsu
            ..tasteYakuzen = record.tasteYakuzen
            ..tasteSesame = record.tasteSesame
            ..tasteShibire = record.tasteShibire
            ..tasteSpiciness = record.tasteSpiciness
            ..tasteFat = record.tasteFat
            ..ingredients.addAll(record.ingredients)
            ..bestIngredient = record.bestIngredient
            ..photoUrl = record.photoUrl
            ..comment = record.comment
            ..overallRating = record.overallRating
            ..visitedAt = record.visitedAt;

          final saved = await apiService!.updateReview(request);
          final index = _records.indexWhere((r) => r.id == record.id);
          if (index != -1) {
            _records[index] = saved;
          }
        } else {
          // Create
          final request = CreateReviewRequest()
            ..shopName = record.shopName
            ..soupType = record.soupType
            ..spicinessLevel = record.spicinessLevel
            ..orderStyle = CreateReviewRequest_OrderStyle.valueOf(
              record.orderStyle.value,
            )!
            ..tasteTonkotsuGyukotsu = record.tasteTonkotsuGyukotsu
            ..tasteYakuzen = record.tasteYakuzen
            ..tasteSesame = record.tasteSesame
            ..tasteShibire = record.tasteShibire
            ..tasteSpiciness = record.tasteSpiciness
            ..tasteFat = record.tasteFat
            ..ingredients.addAll(record.ingredients)
            ..bestIngredient = record.bestIngredient
            ..photoUrl = record.photoUrl
            ..comment = record.comment
            ..overallRating = record.overallRating
            ..visitedAt = record.visitedAt;

          final saved = await apiService!.createReview(request);
          // Replace temporary record with backend record
          final index = _records.indexWhere((r) => r.id == record.id);
          if (index != -1) {
            _records[index] = saved;
          }
        }
      } catch (e) {
        debugPrint('Failed to save to backend: $e');
      }
    }

    await _saveRecords();
    notifyListeners();
  }

  Future<void> deleteRecord(String id) async {
    _records.removeWhere((r) => r.id == id);
    if (apiService != null) {
      try {
        await apiService!.deleteReview(DeleteReviewRequest()..id = id);
      } catch (e) {
        debugPrint('Failed to delete from backend: $e');
      }
    }
    await _saveRecords();
    notifyListeners();
  }

  Future<void> _saveRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final String recordsJson = jsonEncode(
      _records.map((e) => e.toProto3Json()).toList(),
    );
    await prefs.setString(_key, recordsJson);
  }
}
