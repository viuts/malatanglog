//
//  Generated code. Do not modify.
//  source: malatanglog/v1/malatanglog.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'malatanglog.pb.dart' as $0;

export 'malatanglog.pb.dart';

@$pb.GrpcServiceName('malatanglog.v1.FlavorService')
class FlavorServiceClient extends $grpc.Client {
  static final _$getShops = $grpc.ClientMethod<$0.GetShopsRequest, $0.GetShopsResponse>(
      '/malatanglog.v1.FlavorService/GetShops',
      ($0.GetShopsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetShopsResponse.fromBuffer(value));
  static final _$createReview = $grpc.ClientMethod<$0.CreateReviewRequest, $0.Review>(
      '/malatanglog.v1.FlavorService/CreateReview',
      ($0.CreateReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Review.fromBuffer(value));
  static final _$updateReview = $grpc.ClientMethod<$0.UpdateReviewRequest, $0.Review>(
      '/malatanglog.v1.FlavorService/UpdateReview',
      ($0.UpdateReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Review.fromBuffer(value));
  static final _$deleteReview = $grpc.ClientMethod<$0.DeleteReviewRequest, $0.Review>(
      '/malatanglog.v1.FlavorService/DeleteReview',
      ($0.DeleteReviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Review.fromBuffer(value));
  static final _$listReviews = $grpc.ClientMethod<$0.ListReviewsRequest, $0.ListReviewsResponse>(
      '/malatanglog.v1.FlavorService/ListReviews',
      ($0.ListReviewsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListReviewsResponse.fromBuffer(value));

  FlavorServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetShopsResponse> getShops($0.GetShopsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getShops, request, options: options);
  }

  $grpc.ResponseFuture<$0.Review> createReview($0.CreateReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createReview, request, options: options);
  }

  $grpc.ResponseFuture<$0.Review> updateReview($0.UpdateReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateReview, request, options: options);
  }

  $grpc.ResponseFuture<$0.Review> deleteReview($0.DeleteReviewRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteReview, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListReviewsResponse> listReviews($0.ListReviewsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReviews, request, options: options);
  }
}

@$pb.GrpcServiceName('malatanglog.v1.FlavorService')
abstract class FlavorServiceBase extends $grpc.Service {
  $core.String get $name => 'malatanglog.v1.FlavorService';

  FlavorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetShopsRequest, $0.GetShopsResponse>(
        'GetShops',
        getShops_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetShopsRequest.fromBuffer(value),
        ($0.GetShopsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateReviewRequest, $0.Review>(
        'CreateReview',
        createReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateReviewRequest.fromBuffer(value),
        ($0.Review value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateReviewRequest, $0.Review>(
        'UpdateReview',
        updateReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateReviewRequest.fromBuffer(value),
        ($0.Review value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteReviewRequest, $0.Review>(
        'DeleteReview',
        deleteReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteReviewRequest.fromBuffer(value),
        ($0.Review value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListReviewsRequest, $0.ListReviewsResponse>(
        'ListReviews',
        listReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListReviewsRequest.fromBuffer(value),
        ($0.ListReviewsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetShopsResponse> getShops_Pre($grpc.ServiceCall call, $async.Future<$0.GetShopsRequest> request) async {
    return getShops(call, await request);
  }

  $async.Future<$0.Review> createReview_Pre($grpc.ServiceCall call, $async.Future<$0.CreateReviewRequest> request) async {
    return createReview(call, await request);
  }

  $async.Future<$0.Review> updateReview_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateReviewRequest> request) async {
    return updateReview(call, await request);
  }

  $async.Future<$0.Review> deleteReview_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteReviewRequest> request) async {
    return deleteReview(call, await request);
  }

  $async.Future<$0.ListReviewsResponse> listReviews_Pre($grpc.ServiceCall call, $async.Future<$0.ListReviewsRequest> request) async {
    return listReviews(call, await request);
  }

  $async.Future<$0.GetShopsResponse> getShops($grpc.ServiceCall call, $0.GetShopsRequest request);
  $async.Future<$0.Review> createReview($grpc.ServiceCall call, $0.CreateReviewRequest request);
  $async.Future<$0.Review> updateReview($grpc.ServiceCall call, $0.UpdateReviewRequest request);
  $async.Future<$0.Review> deleteReview($grpc.ServiceCall call, $0.DeleteReviewRequest request);
  $async.Future<$0.ListReviewsResponse> listReviews($grpc.ServiceCall call, $0.ListReviewsRequest request);
}
