//
//  Generated code. Do not modify.
//  source: malatanglog/v1/malatanglog.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'malatanglog.pbenum.dart';

export 'malatanglog.pbenum.dart';

class LatLng extends $pb.GeneratedMessage {
  factory LatLng({
    $core.double? lat,
    $core.double? lng,
  }) {
    final $result = create();
    if (lat != null) {
      $result.lat = lat;
    }
    if (lng != null) {
      $result.lng = lng;
    }
    return $result;
  }
  LatLng._() : super();
  factory LatLng.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LatLng.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LatLng', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'lng', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LatLng clone() => LatLng()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LatLng copyWith(void Function(LatLng) updates) => super.copyWith((message) => updates(message as LatLng)) as LatLng;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LatLng create() => LatLng._();
  LatLng createEmptyInstance() => create();
  static $pb.PbList<LatLng> createRepeated() => $pb.PbList<LatLng>();
  @$core.pragma('dart2js:noInline')
  static LatLng getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LatLng>(create);
  static LatLng? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lng => $_getN(1);
  @$pb.TagNumber(2)
  set lng($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLng() => $_has(1);
  @$pb.TagNumber(2)
  void clearLng() => clearField(2);
}

class Shop extends $pb.GeneratedMessage {
  factory Shop({
    $core.String? id,
    $core.String? name,
    $core.double? lat,
    $core.double? lng,
    $core.String? category,
    $core.bool? isChain,
    $core.String? address,
    $core.Iterable<$core.String>? imageUrls,
    $core.String? sourceUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (lat != null) {
      $result.lat = lat;
    }
    if (lng != null) {
      $result.lng = lng;
    }
    if (category != null) {
      $result.category = category;
    }
    if (isChain != null) {
      $result.isChain = isChain;
    }
    if (address != null) {
      $result.address = address;
    }
    if (imageUrls != null) {
      $result.imageUrls.addAll(imageUrls);
    }
    if (sourceUrl != null) {
      $result.sourceUrl = sourceUrl;
    }
    return $result;
  }
  Shop._() : super();
  factory Shop.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Shop.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Shop', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'lng', $pb.PbFieldType.OD)
    ..aOS(5, _omitFieldNames ? '' : 'category')
    ..aOB(7, _omitFieldNames ? '' : 'isChain')
    ..aOS(8, _omitFieldNames ? '' : 'address')
    ..pPS(11, _omitFieldNames ? '' : 'imageUrls')
    ..aOS(13, _omitFieldNames ? '' : 'sourceUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Shop clone() => Shop()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Shop copyWith(void Function(Shop) updates) => super.copyWith((message) => updates(message as Shop)) as Shop;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Shop create() => Shop._();
  Shop createEmptyInstance() => create();
  static $pb.PbList<Shop> createRepeated() => $pb.PbList<Shop>();
  @$core.pragma('dart2js:noInline')
  static Shop getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Shop>(create);
  static Shop? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get lat => $_getN(2);
  @$pb.TagNumber(3)
  set lat($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLat() => $_has(2);
  @$pb.TagNumber(3)
  void clearLat() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get lng => $_getN(3);
  @$pb.TagNumber(4)
  set lng($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLng() => $_has(3);
  @$pb.TagNumber(4)
  void clearLng() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get category => $_getSZ(4);
  @$pb.TagNumber(5)
  set category($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategory() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategory() => clearField(5);

  @$pb.TagNumber(7)
  $core.bool get isChain => $_getBF(5);
  @$pb.TagNumber(7)
  set isChain($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsChain() => $_has(5);
  @$pb.TagNumber(7)
  void clearIsChain() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get address => $_getSZ(6);
  @$pb.TagNumber(8)
  set address($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasAddress() => $_has(6);
  @$pb.TagNumber(8)
  void clearAddress() => clearField(8);

  @$pb.TagNumber(11)
  $core.List<$core.String> get imageUrls => $_getList(7);

  @$pb.TagNumber(13)
  $core.String get sourceUrl => $_getSZ(8);
  @$pb.TagNumber(13)
  set sourceUrl($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(13)
  $core.bool hasSourceUrl() => $_has(8);
  @$pb.TagNumber(13)
  void clearSourceUrl() => clearField(13);
}

class GetShopsRequest extends $pb.GeneratedMessage {
  factory GetShopsRequest({
    $core.String? query,
    LatLng? userLocation,
    $core.double? radiusMeters,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    if (userLocation != null) {
      $result.userLocation = userLocation;
    }
    if (radiusMeters != null) {
      $result.radiusMeters = radiusMeters;
    }
    return $result;
  }
  GetShopsRequest._() : super();
  factory GetShopsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetShopsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetShopsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOM<LatLng>(2, _omitFieldNames ? '' : 'userLocation', subBuilder: LatLng.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'radiusMeters', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetShopsRequest clone() => GetShopsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetShopsRequest copyWith(void Function(GetShopsRequest) updates) => super.copyWith((message) => updates(message as GetShopsRequest)) as GetShopsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetShopsRequest create() => GetShopsRequest._();
  GetShopsRequest createEmptyInstance() => create();
  static $pb.PbList<GetShopsRequest> createRepeated() => $pb.PbList<GetShopsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetShopsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShopsRequest>(create);
  static GetShopsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  LatLng get userLocation => $_getN(1);
  @$pb.TagNumber(2)
  set userLocation(LatLng v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserLocation() => clearField(2);
  @$pb.TagNumber(2)
  LatLng ensureUserLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get radiusMeters => $_getN(2);
  @$pb.TagNumber(3)
  set radiusMeters($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRadiusMeters() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadiusMeters() => clearField(3);
}

class GetShopsResponse extends $pb.GeneratedMessage {
  factory GetShopsResponse({
    $core.Iterable<Shop>? shops,
  }) {
    final $result = create();
    if (shops != null) {
      $result.shops.addAll(shops);
    }
    return $result;
  }
  GetShopsResponse._() : super();
  factory GetShopsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetShopsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetShopsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..pc<Shop>(1, _omitFieldNames ? '' : 'shops', $pb.PbFieldType.PM, subBuilder: Shop.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetShopsResponse clone() => GetShopsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetShopsResponse copyWith(void Function(GetShopsResponse) updates) => super.copyWith((message) => updates(message as GetShopsResponse)) as GetShopsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetShopsResponse create() => GetShopsResponse._();
  GetShopsResponse createEmptyInstance() => create();
  static $pb.PbList<GetShopsResponse> createRepeated() => $pb.PbList<GetShopsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetShopsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShopsResponse>(create);
  static GetShopsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Shop> get shops => $_getList(0);
}

class CreateReviewRequest extends $pb.GeneratedMessage {
  factory CreateReviewRequest({
    $core.String? shopName,
    $core.String? soupType,
    $core.double? spicinessLevel,
    CreateReviewRequest_OrderStyle? orderStyle,
    $core.int? tasteTonkotsuGyukotsu,
    $core.int? tasteYakuzen,
    $core.int? tasteSesame,
    $core.int? tasteShibire,
    $core.int? tasteSpiciness,
    $core.int? tasteFat,
    $core.Iterable<$core.String>? ingredients,
    $core.String? bestIngredient,
    $core.String? photoUrl,
    $core.String? comment,
    $core.double? overallRating,
    $core.String? visitedAt,
  }) {
    final $result = create();
    if (shopName != null) {
      $result.shopName = shopName;
    }
    if (soupType != null) {
      $result.soupType = soupType;
    }
    if (spicinessLevel != null) {
      $result.spicinessLevel = spicinessLevel;
    }
    if (orderStyle != null) {
      $result.orderStyle = orderStyle;
    }
    if (tasteTonkotsuGyukotsu != null) {
      $result.tasteTonkotsuGyukotsu = tasteTonkotsuGyukotsu;
    }
    if (tasteYakuzen != null) {
      $result.tasteYakuzen = tasteYakuzen;
    }
    if (tasteSesame != null) {
      $result.tasteSesame = tasteSesame;
    }
    if (tasteShibire != null) {
      $result.tasteShibire = tasteShibire;
    }
    if (tasteSpiciness != null) {
      $result.tasteSpiciness = tasteSpiciness;
    }
    if (tasteFat != null) {
      $result.tasteFat = tasteFat;
    }
    if (ingredients != null) {
      $result.ingredients.addAll(ingredients);
    }
    if (bestIngredient != null) {
      $result.bestIngredient = bestIngredient;
    }
    if (photoUrl != null) {
      $result.photoUrl = photoUrl;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    if (overallRating != null) {
      $result.overallRating = overallRating;
    }
    if (visitedAt != null) {
      $result.visitedAt = visitedAt;
    }
    return $result;
  }
  CreateReviewRequest._() : super();
  factory CreateReviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateReviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'shopName')
    ..aOS(2, _omitFieldNames ? '' : 'soupType')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'spicinessLevel', $pb.PbFieldType.OD)
    ..e<CreateReviewRequest_OrderStyle>(4, _omitFieldNames ? '' : 'orderStyle', $pb.PbFieldType.OE, defaultOrMaker: CreateReviewRequest_OrderStyle.ORDER_STYLE_UNSPECIFIED, valueOf: CreateReviewRequest_OrderStyle.valueOf, enumValues: CreateReviewRequest_OrderStyle.values)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'tasteTonkotsuGyukotsu', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'tasteYakuzen', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'tasteSesame', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'tasteShibire', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'tasteSpiciness', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'tasteFat', $pb.PbFieldType.O3)
    ..pPS(11, _omitFieldNames ? '' : 'ingredients')
    ..aOS(12, _omitFieldNames ? '' : 'bestIngredient')
    ..aOS(13, _omitFieldNames ? '' : 'photoUrl')
    ..aOS(14, _omitFieldNames ? '' : 'comment')
    ..a<$core.double>(15, _omitFieldNames ? '' : 'overallRating', $pb.PbFieldType.OD)
    ..aOS(16, _omitFieldNames ? '' : 'visitedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateReviewRequest clone() => CreateReviewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateReviewRequest copyWith(void Function(CreateReviewRequest) updates) => super.copyWith((message) => updates(message as CreateReviewRequest)) as CreateReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateReviewRequest create() => CreateReviewRequest._();
  CreateReviewRequest createEmptyInstance() => create();
  static $pb.PbList<CreateReviewRequest> createRepeated() => $pb.PbList<CreateReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateReviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReviewRequest>(create);
  static CreateReviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get shopName => $_getSZ(0);
  @$pb.TagNumber(1)
  set shopName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShopName() => $_has(0);
  @$pb.TagNumber(1)
  void clearShopName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get soupType => $_getSZ(1);
  @$pb.TagNumber(2)
  set soupType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSoupType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSoupType() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get spicinessLevel => $_getN(2);
  @$pb.TagNumber(3)
  set spicinessLevel($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpicinessLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpicinessLevel() => clearField(3);

  @$pb.TagNumber(4)
  CreateReviewRequest_OrderStyle get orderStyle => $_getN(3);
  @$pb.TagNumber(4)
  set orderStyle(CreateReviewRequest_OrderStyle v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrderStyle() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrderStyle() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get tasteTonkotsuGyukotsu => $_getIZ(4);
  @$pb.TagNumber(5)
  set tasteTonkotsuGyukotsu($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTasteTonkotsuGyukotsu() => $_has(4);
  @$pb.TagNumber(5)
  void clearTasteTonkotsuGyukotsu() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get tasteYakuzen => $_getIZ(5);
  @$pb.TagNumber(6)
  set tasteYakuzen($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTasteYakuzen() => $_has(5);
  @$pb.TagNumber(6)
  void clearTasteYakuzen() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get tasteSesame => $_getIZ(6);
  @$pb.TagNumber(7)
  set tasteSesame($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTasteSesame() => $_has(6);
  @$pb.TagNumber(7)
  void clearTasteSesame() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get tasteShibire => $_getIZ(7);
  @$pb.TagNumber(8)
  set tasteShibire($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTasteShibire() => $_has(7);
  @$pb.TagNumber(8)
  void clearTasteShibire() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get tasteSpiciness => $_getIZ(8);
  @$pb.TagNumber(9)
  set tasteSpiciness($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTasteSpiciness() => $_has(8);
  @$pb.TagNumber(9)
  void clearTasteSpiciness() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get tasteFat => $_getIZ(9);
  @$pb.TagNumber(10)
  set tasteFat($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTasteFat() => $_has(9);
  @$pb.TagNumber(10)
  void clearTasteFat() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.String> get ingredients => $_getList(10);

  @$pb.TagNumber(12)
  $core.String get bestIngredient => $_getSZ(11);
  @$pb.TagNumber(12)
  set bestIngredient($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBestIngredient() => $_has(11);
  @$pb.TagNumber(12)
  void clearBestIngredient() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get photoUrl => $_getSZ(12);
  @$pb.TagNumber(13)
  set photoUrl($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPhotoUrl() => $_has(12);
  @$pb.TagNumber(13)
  void clearPhotoUrl() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get comment => $_getSZ(13);
  @$pb.TagNumber(14)
  set comment($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasComment() => $_has(13);
  @$pb.TagNumber(14)
  void clearComment() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get overallRating => $_getN(14);
  @$pb.TagNumber(15)
  set overallRating($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasOverallRating() => $_has(14);
  @$pb.TagNumber(15)
  void clearOverallRating() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get visitedAt => $_getSZ(15);
  @$pb.TagNumber(16)
  set visitedAt($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasVisitedAt() => $_has(15);
  @$pb.TagNumber(16)
  void clearVisitedAt() => clearField(16);
}

class ListReviewsRequest extends $pb.GeneratedMessage {
  factory ListReviewsRequest() => create();
  ListReviewsRequest._() : super();
  factory ListReviewsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReviewsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListReviewsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReviewsRequest clone() => ListReviewsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReviewsRequest copyWith(void Function(ListReviewsRequest) updates) => super.copyWith((message) => updates(message as ListReviewsRequest)) as ListReviewsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReviewsRequest create() => ListReviewsRequest._();
  ListReviewsRequest createEmptyInstance() => create();
  static $pb.PbList<ListReviewsRequest> createRepeated() => $pb.PbList<ListReviewsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListReviewsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReviewsRequest>(create);
  static ListReviewsRequest? _defaultInstance;
}

class ListReviewsResponse extends $pb.GeneratedMessage {
  factory ListReviewsResponse({
    $core.Iterable<Review>? reviews,
  }) {
    final $result = create();
    if (reviews != null) {
      $result.reviews.addAll(reviews);
    }
    return $result;
  }
  ListReviewsResponse._() : super();
  factory ListReviewsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReviewsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListReviewsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..pc<Review>(1, _omitFieldNames ? '' : 'reviews', $pb.PbFieldType.PM, subBuilder: Review.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReviewsResponse clone() => ListReviewsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReviewsResponse copyWith(void Function(ListReviewsResponse) updates) => super.copyWith((message) => updates(message as ListReviewsResponse)) as ListReviewsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReviewsResponse create() => ListReviewsResponse._();
  ListReviewsResponse createEmptyInstance() => create();
  static $pb.PbList<ListReviewsResponse> createRepeated() => $pb.PbList<ListReviewsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListReviewsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReviewsResponse>(create);
  static ListReviewsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Review> get reviews => $_getList(0);
}

class UpdateReviewRequest extends $pb.GeneratedMessage {
  factory UpdateReviewRequest({
    $core.String? id,
    $core.String? shopName,
    $core.String? soupType,
    $core.double? spicinessLevel,
    UpdateReviewRequest_OrderStyle? orderStyle,
    $core.int? tasteTonkotsuGyukotsu,
    $core.int? tasteYakuzen,
    $core.int? tasteSesame,
    $core.int? tasteShibire,
    $core.int? tasteSpiciness,
    $core.int? tasteFat,
    $core.Iterable<$core.String>? ingredients,
    $core.String? bestIngredient,
    $core.String? photoUrl,
    $core.String? comment,
    $core.double? overallRating,
    $core.String? visitedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (shopName != null) {
      $result.shopName = shopName;
    }
    if (soupType != null) {
      $result.soupType = soupType;
    }
    if (spicinessLevel != null) {
      $result.spicinessLevel = spicinessLevel;
    }
    if (orderStyle != null) {
      $result.orderStyle = orderStyle;
    }
    if (tasteTonkotsuGyukotsu != null) {
      $result.tasteTonkotsuGyukotsu = tasteTonkotsuGyukotsu;
    }
    if (tasteYakuzen != null) {
      $result.tasteYakuzen = tasteYakuzen;
    }
    if (tasteSesame != null) {
      $result.tasteSesame = tasteSesame;
    }
    if (tasteShibire != null) {
      $result.tasteShibire = tasteShibire;
    }
    if (tasteSpiciness != null) {
      $result.tasteSpiciness = tasteSpiciness;
    }
    if (tasteFat != null) {
      $result.tasteFat = tasteFat;
    }
    if (ingredients != null) {
      $result.ingredients.addAll(ingredients);
    }
    if (bestIngredient != null) {
      $result.bestIngredient = bestIngredient;
    }
    if (photoUrl != null) {
      $result.photoUrl = photoUrl;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    if (overallRating != null) {
      $result.overallRating = overallRating;
    }
    if (visitedAt != null) {
      $result.visitedAt = visitedAt;
    }
    return $result;
  }
  UpdateReviewRequest._() : super();
  factory UpdateReviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'shopName')
    ..aOS(3, _omitFieldNames ? '' : 'soupType')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'spicinessLevel', $pb.PbFieldType.OD)
    ..e<UpdateReviewRequest_OrderStyle>(5, _omitFieldNames ? '' : 'orderStyle', $pb.PbFieldType.OE, defaultOrMaker: UpdateReviewRequest_OrderStyle.ORDER_STYLE_UNSPECIFIED, valueOf: UpdateReviewRequest_OrderStyle.valueOf, enumValues: UpdateReviewRequest_OrderStyle.values)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'tasteTonkotsuGyukotsu', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'tasteYakuzen', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'tasteSesame', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'tasteShibire', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'tasteSpiciness', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'tasteFat', $pb.PbFieldType.O3)
    ..pPS(12, _omitFieldNames ? '' : 'ingredients')
    ..aOS(13, _omitFieldNames ? '' : 'bestIngredient')
    ..aOS(14, _omitFieldNames ? '' : 'photoUrl')
    ..aOS(15, _omitFieldNames ? '' : 'comment')
    ..a<$core.double>(16, _omitFieldNames ? '' : 'overallRating', $pb.PbFieldType.OD)
    ..aOS(17, _omitFieldNames ? '' : 'visitedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReviewRequest clone() => UpdateReviewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReviewRequest copyWith(void Function(UpdateReviewRequest) updates) => super.copyWith((message) => updates(message as UpdateReviewRequest)) as UpdateReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReviewRequest create() => UpdateReviewRequest._();
  UpdateReviewRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateReviewRequest> createRepeated() => $pb.PbList<UpdateReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateReviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReviewRequest>(create);
  static UpdateReviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get shopName => $_getSZ(1);
  @$pb.TagNumber(2)
  set shopName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShopName() => $_has(1);
  @$pb.TagNumber(2)
  void clearShopName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get soupType => $_getSZ(2);
  @$pb.TagNumber(3)
  set soupType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSoupType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSoupType() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get spicinessLevel => $_getN(3);
  @$pb.TagNumber(4)
  set spicinessLevel($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpicinessLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpicinessLevel() => clearField(4);

  @$pb.TagNumber(5)
  UpdateReviewRequest_OrderStyle get orderStyle => $_getN(4);
  @$pb.TagNumber(5)
  set orderStyle(UpdateReviewRequest_OrderStyle v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrderStyle() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrderStyle() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get tasteTonkotsuGyukotsu => $_getIZ(5);
  @$pb.TagNumber(6)
  set tasteTonkotsuGyukotsu($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTasteTonkotsuGyukotsu() => $_has(5);
  @$pb.TagNumber(6)
  void clearTasteTonkotsuGyukotsu() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get tasteYakuzen => $_getIZ(6);
  @$pb.TagNumber(7)
  set tasteYakuzen($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTasteYakuzen() => $_has(6);
  @$pb.TagNumber(7)
  void clearTasteYakuzen() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get tasteSesame => $_getIZ(7);
  @$pb.TagNumber(8)
  set tasteSesame($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTasteSesame() => $_has(7);
  @$pb.TagNumber(8)
  void clearTasteSesame() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get tasteShibire => $_getIZ(8);
  @$pb.TagNumber(9)
  set tasteShibire($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTasteShibire() => $_has(8);
  @$pb.TagNumber(9)
  void clearTasteShibire() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get tasteSpiciness => $_getIZ(9);
  @$pb.TagNumber(10)
  set tasteSpiciness($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTasteSpiciness() => $_has(9);
  @$pb.TagNumber(10)
  void clearTasteSpiciness() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get tasteFat => $_getIZ(10);
  @$pb.TagNumber(11)
  set tasteFat($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTasteFat() => $_has(10);
  @$pb.TagNumber(11)
  void clearTasteFat() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.String> get ingredients => $_getList(11);

  @$pb.TagNumber(13)
  $core.String get bestIngredient => $_getSZ(12);
  @$pb.TagNumber(13)
  set bestIngredient($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBestIngredient() => $_has(12);
  @$pb.TagNumber(13)
  void clearBestIngredient() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get photoUrl => $_getSZ(13);
  @$pb.TagNumber(14)
  set photoUrl($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPhotoUrl() => $_has(13);
  @$pb.TagNumber(14)
  void clearPhotoUrl() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get comment => $_getSZ(14);
  @$pb.TagNumber(15)
  set comment($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasComment() => $_has(14);
  @$pb.TagNumber(15)
  void clearComment() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get overallRating => $_getN(15);
  @$pb.TagNumber(16)
  set overallRating($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasOverallRating() => $_has(15);
  @$pb.TagNumber(16)
  void clearOverallRating() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get visitedAt => $_getSZ(16);
  @$pb.TagNumber(17)
  set visitedAt($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasVisitedAt() => $_has(16);
  @$pb.TagNumber(17)
  void clearVisitedAt() => clearField(17);
}

class DeleteReviewRequest extends $pb.GeneratedMessage {
  factory DeleteReviewRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteReviewRequest._() : super();
  factory DeleteReviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteReviewRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteReviewRequest clone() => DeleteReviewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteReviewRequest copyWith(void Function(DeleteReviewRequest) updates) => super.copyWith((message) => updates(message as DeleteReviewRequest)) as DeleteReviewRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteReviewRequest create() => DeleteReviewRequest._();
  DeleteReviewRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteReviewRequest> createRepeated() => $pb.PbList<DeleteReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteReviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReviewRequest>(create);
  static DeleteReviewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class Review extends $pb.GeneratedMessage {
  factory Review({
    $core.String? id,
    $core.String? shopName,
    $core.String? soupType,
    $core.double? spicinessLevel,
    Review_OrderStyle? orderStyle,
    $core.int? tasteTonkotsuGyukotsu,
    $core.int? tasteYakuzen,
    $core.int? tasteSesame,
    $core.int? tasteShibire,
    $core.int? tasteSpiciness,
    $core.int? tasteFat,
    $core.Iterable<$core.String>? ingredients,
    $core.String? bestIngredient,
    $core.String? photoUrl,
    $core.String? comment,
    $core.double? overallRating,
    $core.String? createdAt,
    $core.String? visitedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (shopName != null) {
      $result.shopName = shopName;
    }
    if (soupType != null) {
      $result.soupType = soupType;
    }
    if (spicinessLevel != null) {
      $result.spicinessLevel = spicinessLevel;
    }
    if (orderStyle != null) {
      $result.orderStyle = orderStyle;
    }
    if (tasteTonkotsuGyukotsu != null) {
      $result.tasteTonkotsuGyukotsu = tasteTonkotsuGyukotsu;
    }
    if (tasteYakuzen != null) {
      $result.tasteYakuzen = tasteYakuzen;
    }
    if (tasteSesame != null) {
      $result.tasteSesame = tasteSesame;
    }
    if (tasteShibire != null) {
      $result.tasteShibire = tasteShibire;
    }
    if (tasteSpiciness != null) {
      $result.tasteSpiciness = tasteSpiciness;
    }
    if (tasteFat != null) {
      $result.tasteFat = tasteFat;
    }
    if (ingredients != null) {
      $result.ingredients.addAll(ingredients);
    }
    if (bestIngredient != null) {
      $result.bestIngredient = bestIngredient;
    }
    if (photoUrl != null) {
      $result.photoUrl = photoUrl;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    if (overallRating != null) {
      $result.overallRating = overallRating;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (visitedAt != null) {
      $result.visitedAt = visitedAt;
    }
    return $result;
  }
  Review._() : super();
  factory Review.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Review.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Review', package: const $pb.PackageName(_omitMessageNames ? '' : 'malatanglog.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'shopName')
    ..aOS(3, _omitFieldNames ? '' : 'soupType')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'spicinessLevel', $pb.PbFieldType.OD)
    ..e<Review_OrderStyle>(5, _omitFieldNames ? '' : 'orderStyle', $pb.PbFieldType.OE, defaultOrMaker: Review_OrderStyle.ORDER_STYLE_UNSPECIFIED, valueOf: Review_OrderStyle.valueOf, enumValues: Review_OrderStyle.values)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'tasteTonkotsuGyukotsu', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'tasteYakuzen', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'tasteSesame', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'tasteShibire', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'tasteSpiciness', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'tasteFat', $pb.PbFieldType.O3)
    ..pPS(12, _omitFieldNames ? '' : 'ingredients')
    ..aOS(13, _omitFieldNames ? '' : 'bestIngredient')
    ..aOS(14, _omitFieldNames ? '' : 'photoUrl')
    ..aOS(15, _omitFieldNames ? '' : 'comment')
    ..a<$core.double>(16, _omitFieldNames ? '' : 'overallRating', $pb.PbFieldType.OD)
    ..aOS(17, _omitFieldNames ? '' : 'createdAt')
    ..aOS(18, _omitFieldNames ? '' : 'visitedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Review clone() => Review()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Review copyWith(void Function(Review) updates) => super.copyWith((message) => updates(message as Review)) as Review;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Review create() => Review._();
  Review createEmptyInstance() => create();
  static $pb.PbList<Review> createRepeated() => $pb.PbList<Review>();
  @$core.pragma('dart2js:noInline')
  static Review getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Review>(create);
  static Review? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get shopName => $_getSZ(1);
  @$pb.TagNumber(2)
  set shopName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShopName() => $_has(1);
  @$pb.TagNumber(2)
  void clearShopName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get soupType => $_getSZ(2);
  @$pb.TagNumber(3)
  set soupType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSoupType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSoupType() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get spicinessLevel => $_getN(3);
  @$pb.TagNumber(4)
  set spicinessLevel($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpicinessLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpicinessLevel() => clearField(4);

  @$pb.TagNumber(5)
  Review_OrderStyle get orderStyle => $_getN(4);
  @$pb.TagNumber(5)
  set orderStyle(Review_OrderStyle v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrderStyle() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrderStyle() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get tasteTonkotsuGyukotsu => $_getIZ(5);
  @$pb.TagNumber(6)
  set tasteTonkotsuGyukotsu($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTasteTonkotsuGyukotsu() => $_has(5);
  @$pb.TagNumber(6)
  void clearTasteTonkotsuGyukotsu() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get tasteYakuzen => $_getIZ(6);
  @$pb.TagNumber(7)
  set tasteYakuzen($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTasteYakuzen() => $_has(6);
  @$pb.TagNumber(7)
  void clearTasteYakuzen() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get tasteSesame => $_getIZ(7);
  @$pb.TagNumber(8)
  set tasteSesame($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTasteSesame() => $_has(7);
  @$pb.TagNumber(8)
  void clearTasteSesame() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get tasteShibire => $_getIZ(8);
  @$pb.TagNumber(9)
  set tasteShibire($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTasteShibire() => $_has(8);
  @$pb.TagNumber(9)
  void clearTasteShibire() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get tasteSpiciness => $_getIZ(9);
  @$pb.TagNumber(10)
  set tasteSpiciness($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTasteSpiciness() => $_has(9);
  @$pb.TagNumber(10)
  void clearTasteSpiciness() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get tasteFat => $_getIZ(10);
  @$pb.TagNumber(11)
  set tasteFat($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTasteFat() => $_has(10);
  @$pb.TagNumber(11)
  void clearTasteFat() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.String> get ingredients => $_getList(11);

  @$pb.TagNumber(13)
  $core.String get bestIngredient => $_getSZ(12);
  @$pb.TagNumber(13)
  set bestIngredient($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBestIngredient() => $_has(12);
  @$pb.TagNumber(13)
  void clearBestIngredient() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get photoUrl => $_getSZ(13);
  @$pb.TagNumber(14)
  set photoUrl($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPhotoUrl() => $_has(13);
  @$pb.TagNumber(14)
  void clearPhotoUrl() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get comment => $_getSZ(14);
  @$pb.TagNumber(15)
  set comment($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasComment() => $_has(14);
  @$pb.TagNumber(15)
  void clearComment() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get overallRating => $_getN(15);
  @$pb.TagNumber(16)
  set overallRating($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasOverallRating() => $_has(15);
  @$pb.TagNumber(16)
  void clearOverallRating() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get createdAt => $_getSZ(16);
  @$pb.TagNumber(17)
  set createdAt($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasCreatedAt() => $_has(16);
  @$pb.TagNumber(17)
  void clearCreatedAt() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get visitedAt => $_getSZ(17);
  @$pb.TagNumber(18)
  set visitedAt($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasVisitedAt() => $_has(17);
  @$pb.TagNumber(18)
  void clearVisitedAt() => clearField(18);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
