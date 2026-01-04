//
//  Generated code. Do not modify.
//  source: malatanglog/v1/malatanglog.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use latLngDescriptor instead')
const LatLng$json = {
  '1': 'LatLng',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lng', '3': 2, '4': 1, '5': 1, '10': 'lng'},
  ],
};

/// Descriptor for `LatLng`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List latLngDescriptor = $convert.base64Decode(
    'CgZMYXRMbmcSEAoDbGF0GAEgASgBUgNsYXQSEAoDbG5nGAIgASgBUgNsbmc=');

@$core.Deprecated('Use shopDescriptor instead')
const Shop$json = {
  '1': 'Shop',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'lat', '3': 3, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lng', '3': 4, '4': 1, '5': 1, '10': 'lng'},
    {'1': 'category', '3': 5, '4': 1, '5': 9, '10': 'category'},
    {'1': 'is_chain', '3': 7, '4': 1, '5': 8, '10': 'isChain'},
    {'1': 'address', '3': 8, '4': 1, '5': 9, '10': 'address'},
    {'1': 'image_urls', '3': 11, '4': 3, '5': 9, '10': 'imageUrls'},
    {'1': 'source_url', '3': 13, '4': 1, '5': 9, '10': 'sourceUrl'},
  ],
};

/// Descriptor for `Shop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shopDescriptor = $convert.base64Decode(
    'CgRTaG9wEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhAKA2xhdBgDIAEoAV'
    'IDbGF0EhAKA2xuZxgEIAEoAVIDbG5nEhoKCGNhdGVnb3J5GAUgASgJUghjYXRlZ29yeRIZCghp'
    'c19jaGFpbhgHIAEoCFIHaXNDaGFpbhIYCgdhZGRyZXNzGAggASgJUgdhZGRyZXNzEh0KCmltYW'
    'dlX3VybHMYCyADKAlSCWltYWdlVXJscxIdCgpzb3VyY2VfdXJsGA0gASgJUglzb3VyY2VVcmw=');

@$core.Deprecated('Use getShopsRequestDescriptor instead')
const GetShopsRequest$json = {
  '1': 'GetShopsRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'user_location', '3': 2, '4': 1, '5': 11, '6': '.malatanglog.v1.LatLng', '10': 'userLocation'},
    {'1': 'radius_meters', '3': 3, '4': 1, '5': 1, '10': 'radiusMeters'},
  ],
};

/// Descriptor for `GetShopsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getShopsRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRTaG9wc1JlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5EjsKDXVzZXJfbG9jYXRpb2'
    '4YAiABKAsyFi5tYWxhdGFuZ2xvZy52MS5MYXRMbmdSDHVzZXJMb2NhdGlvbhIjCg1yYWRpdXNf'
    'bWV0ZXJzGAMgASgBUgxyYWRpdXNNZXRlcnM=');

@$core.Deprecated('Use getShopsResponseDescriptor instead')
const GetShopsResponse$json = {
  '1': 'GetShopsResponse',
  '2': [
    {'1': 'shops', '3': 1, '4': 3, '5': 11, '6': '.malatanglog.v1.Shop', '10': 'shops'},
  ],
};

/// Descriptor for `GetShopsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getShopsResponseDescriptor = $convert.base64Decode(
    'ChBHZXRTaG9wc1Jlc3BvbnNlEioKBXNob3BzGAEgAygLMhQubWFsYXRhbmdsb2cudjEuU2hvcF'
    'IFc2hvcHM=');

@$core.Deprecated('Use createReviewRequestDescriptor instead')
const CreateReviewRequest$json = {
  '1': 'CreateReviewRequest',
  '2': [
    {'1': 'shop_name', '3': 1, '4': 1, '5': 9, '10': 'shopName'},
    {'1': 'soup_type', '3': 2, '4': 1, '5': 9, '10': 'soupType'},
    {'1': 'spiciness_level', '3': 3, '4': 1, '5': 1, '10': 'spicinessLevel'},
    {'1': 'order_style', '3': 4, '4': 1, '5': 14, '6': '.malatanglog.v1.CreateReviewRequest.OrderStyle', '10': 'orderStyle'},
    {'1': 'taste_tonkotsu_gyukotsu', '3': 5, '4': 1, '5': 5, '10': 'tasteTonkotsuGyukotsu'},
    {'1': 'taste_yakuzen', '3': 6, '4': 1, '5': 5, '10': 'tasteYakuzen'},
    {'1': 'taste_sesame', '3': 7, '4': 1, '5': 5, '10': 'tasteSesame'},
    {'1': 'taste_shibire', '3': 8, '4': 1, '5': 5, '10': 'tasteShibire'},
    {'1': 'taste_spiciness', '3': 9, '4': 1, '5': 5, '10': 'tasteSpiciness'},
    {'1': 'taste_fat', '3': 10, '4': 1, '5': 5, '10': 'tasteFat'},
    {'1': 'ingredients', '3': 11, '4': 3, '5': 9, '10': 'ingredients'},
    {'1': 'best_ingredient', '3': 12, '4': 1, '5': 9, '10': 'bestIngredient'},
    {'1': 'photo_url', '3': 13, '4': 1, '5': 9, '10': 'photoUrl'},
    {'1': 'comment', '3': 14, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'overall_rating', '3': 15, '4': 1, '5': 1, '10': 'overallRating'},
    {'1': 'visited_at', '3': 16, '4': 1, '5': 9, '10': 'visitedAt'},
  ],
  '4': [CreateReviewRequest_OrderStyle$json],
};

@$core.Deprecated('Use createReviewRequestDescriptor instead')
const CreateReviewRequest_OrderStyle$json = {
  '1': 'OrderStyle',
  '2': [
    {'1': 'ORDER_STYLE_UNSPECIFIED', '2': 0},
    {'1': 'ORDER_STYLE_BUFFET', '2': 1},
    {'1': 'ORDER_STYLE_ORDER', '2': 2},
  ],
};

/// Descriptor for `CreateReviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createReviewRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVSZXZpZXdSZXF1ZXN0EhsKCXNob3BfbmFtZRgBIAEoCVIIc2hvcE5hbWUSGwoJc2'
    '91cF90eXBlGAIgASgJUghzb3VwVHlwZRInCg9zcGljaW5lc3NfbGV2ZWwYAyABKAFSDnNwaWNp'
    'bmVzc0xldmVsEk8KC29yZGVyX3N0eWxlGAQgASgOMi4ubWFsYXRhbmdsb2cudjEuQ3JlYXRlUm'
    'V2aWV3UmVxdWVzdC5PcmRlclN0eWxlUgpvcmRlclN0eWxlEjYKF3Rhc3RlX3RvbmtvdHN1X2d5'
    'dWtvdHN1GAUgASgFUhV0YXN0ZVRvbmtvdHN1R3l1a290c3USIwoNdGFzdGVfeWFrdXplbhgGIA'
    'EoBVIMdGFzdGVZYWt1emVuEiEKDHRhc3RlX3Nlc2FtZRgHIAEoBVILdGFzdGVTZXNhbWUSIwoN'
    'dGFzdGVfc2hpYmlyZRgIIAEoBVIMdGFzdGVTaGliaXJlEicKD3Rhc3RlX3NwaWNpbmVzcxgJIA'
    'EoBVIOdGFzdGVTcGljaW5lc3MSGwoJdGFzdGVfZmF0GAogASgFUgh0YXN0ZUZhdBIgCgtpbmdy'
    'ZWRpZW50cxgLIAMoCVILaW5ncmVkaWVudHMSJwoPYmVzdF9pbmdyZWRpZW50GAwgASgJUg5iZX'
    'N0SW5ncmVkaWVudBIbCglwaG90b191cmwYDSABKAlSCHBob3RvVXJsEhgKB2NvbW1lbnQYDiAB'
    'KAlSB2NvbW1lbnQSJQoOb3ZlcmFsbF9yYXRpbmcYDyABKAFSDW92ZXJhbGxSYXRpbmcSHQoKdm'
    'lzaXRlZF9hdBgQIAEoCVIJdmlzaXRlZEF0IlgKCk9yZGVyU3R5bGUSGwoXT1JERVJfU1RZTEVf'
    'VU5TUEVDSUZJRUQQABIWChJPUkRFUl9TVFlMRV9CVUZGRVQQARIVChFPUkRFUl9TVFlMRV9PUk'
    'RFUhAC');

@$core.Deprecated('Use listReviewsRequestDescriptor instead')
const ListReviewsRequest$json = {
  '1': 'ListReviewsRequest',
};

/// Descriptor for `ListReviewsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReviewsRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0UmV2aWV3c1JlcXVlc3Q=');

@$core.Deprecated('Use listReviewsResponseDescriptor instead')
const ListReviewsResponse$json = {
  '1': 'ListReviewsResponse',
  '2': [
    {'1': 'reviews', '3': 1, '4': 3, '5': 11, '6': '.malatanglog.v1.Review', '10': 'reviews'},
  ],
};

/// Descriptor for `ListReviewsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReviewsResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0UmV2aWV3c1Jlc3BvbnNlEjAKB3Jldmlld3MYASADKAsyFi5tYWxhdGFuZ2xvZy52MS'
    '5SZXZpZXdSB3Jldmlld3M=');

@$core.Deprecated('Use updateReviewRequestDescriptor instead')
const UpdateReviewRequest$json = {
  '1': 'UpdateReviewRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'shop_name', '3': 2, '4': 1, '5': 9, '10': 'shopName'},
    {'1': 'soup_type', '3': 3, '4': 1, '5': 9, '10': 'soupType'},
    {'1': 'spiciness_level', '3': 4, '4': 1, '5': 1, '10': 'spicinessLevel'},
    {'1': 'order_style', '3': 5, '4': 1, '5': 14, '6': '.malatanglog.v1.UpdateReviewRequest.OrderStyle', '10': 'orderStyle'},
    {'1': 'taste_tonkotsu_gyukotsu', '3': 6, '4': 1, '5': 5, '10': 'tasteTonkotsuGyukotsu'},
    {'1': 'taste_yakuzen', '3': 7, '4': 1, '5': 5, '10': 'tasteYakuzen'},
    {'1': 'taste_sesame', '3': 8, '4': 1, '5': 5, '10': 'tasteSesame'},
    {'1': 'taste_shibire', '3': 9, '4': 1, '5': 5, '10': 'tasteShibire'},
    {'1': 'taste_spiciness', '3': 10, '4': 1, '5': 5, '10': 'tasteSpiciness'},
    {'1': 'taste_fat', '3': 11, '4': 1, '5': 5, '10': 'tasteFat'},
    {'1': 'ingredients', '3': 12, '4': 3, '5': 9, '10': 'ingredients'},
    {'1': 'best_ingredient', '3': 13, '4': 1, '5': 9, '10': 'bestIngredient'},
    {'1': 'photo_url', '3': 14, '4': 1, '5': 9, '10': 'photoUrl'},
    {'1': 'comment', '3': 15, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'overall_rating', '3': 16, '4': 1, '5': 1, '10': 'overallRating'},
    {'1': 'visited_at', '3': 17, '4': 1, '5': 9, '10': 'visitedAt'},
  ],
  '4': [UpdateReviewRequest_OrderStyle$json],
};

@$core.Deprecated('Use updateReviewRequestDescriptor instead')
const UpdateReviewRequest_OrderStyle$json = {
  '1': 'OrderStyle',
  '2': [
    {'1': 'ORDER_STYLE_UNSPECIFIED', '2': 0},
    {'1': 'ORDER_STYLE_BUFFET', '2': 1},
    {'1': 'ORDER_STYLE_ORDER', '2': 2},
  ],
};

/// Descriptor for `UpdateReviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReviewRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVSZXZpZXdSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIbCglzaG9wX25hbWUYAiABKA'
    'lSCHNob3BOYW1lEhsKCXNvdXBfdHlwZRgDIAEoCVIIc291cFR5cGUSJwoPc3BpY2luZXNzX2xl'
    'dmVsGAQgASgBUg5zcGljaW5lc3NMZXZlbBJPCgtvcmRlcl9zdHlsZRgFIAEoDjIuLm1hbGF0YW'
    '5nbG9nLnYxLlVwZGF0ZVJldmlld1JlcXVlc3QuT3JkZXJTdHlsZVIKb3JkZXJTdHlsZRI2Chd0'
    'YXN0ZV90b25rb3RzdV9neXVrb3RzdRgGIAEoBVIVdGFzdGVUb25rb3RzdUd5dWtvdHN1EiMKDX'
    'Rhc3RlX3lha3V6ZW4YByABKAVSDHRhc3RlWWFrdXplbhIhCgx0YXN0ZV9zZXNhbWUYCCABKAVS'
    'C3Rhc3RlU2VzYW1lEiMKDXRhc3RlX3NoaWJpcmUYCSABKAVSDHRhc3RlU2hpYmlyZRInCg90YX'
    'N0ZV9zcGljaW5lc3MYCiABKAVSDnRhc3RlU3BpY2luZXNzEhsKCXRhc3RlX2ZhdBgLIAEoBVII'
    'dGFzdGVGYXQSIAoLaW5ncmVkaWVudHMYDCADKAlSC2luZ3JlZGllbnRzEicKD2Jlc3RfaW5ncm'
    'VkaWVudBgNIAEoCVIOYmVzdEluZ3JlZGllbnQSGwoJcGhvdG9fdXJsGA4gASgJUghwaG90b1Vy'
    'bBIYCgdjb21tZW50GA8gASgJUgdjb21tZW50EiUKDm92ZXJhbGxfcmF0aW5nGBAgASgBUg1vdm'
    'VyYWxsUmF0aW5nEh0KCnZpc2l0ZWRfYXQYESABKAlSCXZpc2l0ZWRBdCJYCgpPcmRlclN0eWxl'
    'EhsKF09SREVSX1NUWUxFX1VOU1BFQ0lGSUVEEAASFgoST1JERVJfU1RZTEVfQlVGRkVUEAESFQ'
    'oRT1JERVJfU1RZTEVfT1JERVIQAg==');

@$core.Deprecated('Use deleteReviewRequestDescriptor instead')
const DeleteReviewRequest$json = {
  '1': 'DeleteReviewRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteReviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReviewRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVSZXZpZXdSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use reviewDescriptor instead')
const Review$json = {
  '1': 'Review',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'shop_name', '3': 2, '4': 1, '5': 9, '10': 'shopName'},
    {'1': 'soup_type', '3': 3, '4': 1, '5': 9, '10': 'soupType'},
    {'1': 'spiciness_level', '3': 4, '4': 1, '5': 1, '10': 'spicinessLevel'},
    {'1': 'order_style', '3': 5, '4': 1, '5': 14, '6': '.malatanglog.v1.Review.OrderStyle', '10': 'orderStyle'},
    {'1': 'taste_tonkotsu_gyukotsu', '3': 6, '4': 1, '5': 5, '10': 'tasteTonkotsuGyukotsu'},
    {'1': 'taste_yakuzen', '3': 7, '4': 1, '5': 5, '10': 'tasteYakuzen'},
    {'1': 'taste_sesame', '3': 8, '4': 1, '5': 5, '10': 'tasteSesame'},
    {'1': 'taste_shibire', '3': 9, '4': 1, '5': 5, '10': 'tasteShibire'},
    {'1': 'taste_spiciness', '3': 10, '4': 1, '5': 5, '10': 'tasteSpiciness'},
    {'1': 'taste_fat', '3': 11, '4': 1, '5': 5, '10': 'tasteFat'},
    {'1': 'ingredients', '3': 12, '4': 3, '5': 9, '10': 'ingredients'},
    {'1': 'best_ingredient', '3': 13, '4': 1, '5': 9, '10': 'bestIngredient'},
    {'1': 'photo_url', '3': 14, '4': 1, '5': 9, '10': 'photoUrl'},
    {'1': 'comment', '3': 15, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'overall_rating', '3': 16, '4': 1, '5': 1, '10': 'overallRating'},
    {'1': 'created_at', '3': 17, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'visited_at', '3': 18, '4': 1, '5': 9, '10': 'visitedAt'},
  ],
  '4': [Review_OrderStyle$json],
};

@$core.Deprecated('Use reviewDescriptor instead')
const Review_OrderStyle$json = {
  '1': 'OrderStyle',
  '2': [
    {'1': 'ORDER_STYLE_UNSPECIFIED', '2': 0},
    {'1': 'ORDER_STYLE_BUFFET', '2': 1},
    {'1': 'ORDER_STYLE_ORDER', '2': 2},
  ],
};

/// Descriptor for `Review`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reviewDescriptor = $convert.base64Decode(
    'CgZSZXZpZXcSDgoCaWQYASABKAlSAmlkEhsKCXNob3BfbmFtZRgCIAEoCVIIc2hvcE5hbWUSGw'
    'oJc291cF90eXBlGAMgASgJUghzb3VwVHlwZRInCg9zcGljaW5lc3NfbGV2ZWwYBCABKAFSDnNw'
    'aWNpbmVzc0xldmVsEkIKC29yZGVyX3N0eWxlGAUgASgOMiEubWFsYXRhbmdsb2cudjEuUmV2aW'
    'V3Lk9yZGVyU3R5bGVSCm9yZGVyU3R5bGUSNgoXdGFzdGVfdG9ua290c3VfZ3l1a290c3UYBiAB'
    'KAVSFXRhc3RlVG9ua290c3VHeXVrb3RzdRIjCg10YXN0ZV95YWt1emVuGAcgASgFUgx0YXN0ZV'
    'lha3V6ZW4SIQoMdGFzdGVfc2VzYW1lGAggASgFUgt0YXN0ZVNlc2FtZRIjCg10YXN0ZV9zaGli'
    'aXJlGAkgASgFUgx0YXN0ZVNoaWJpcmUSJwoPdGFzdGVfc3BpY2luZXNzGAogASgFUg50YXN0ZV'
    'NwaWNpbmVzcxIbCgl0YXN0ZV9mYXQYCyABKAVSCHRhc3RlRmF0EiAKC2luZ3JlZGllbnRzGAwg'
    'AygJUgtpbmdyZWRpZW50cxInCg9iZXN0X2luZ3JlZGllbnQYDSABKAlSDmJlc3RJbmdyZWRpZW'
    '50EhsKCXBob3RvX3VybBgOIAEoCVIIcGhvdG9VcmwSGAoHY29tbWVudBgPIAEoCVIHY29tbWVu'
    'dBIlCg5vdmVyYWxsX3JhdGluZxgQIAEoAVINb3ZlcmFsbFJhdGluZxIdCgpjcmVhdGVkX2F0GB'
    'EgASgJUgljcmVhdGVkQXQSHQoKdmlzaXRlZF9hdBgSIAEoCVIJdmlzaXRlZEF0IlgKCk9yZGVy'
    'U3R5bGUSGwoXT1JERVJfU1RZTEVfVU5TUEVDSUZJRUQQABIWChJPUkRFUl9TVFlMRV9CVUZGRV'
    'QQARIVChFPUkRFUl9TVFlMRV9PUkRFUhAC');

