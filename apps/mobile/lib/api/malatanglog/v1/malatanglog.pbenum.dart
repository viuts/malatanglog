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

class CreateReviewRequest_OrderStyle extends $pb.ProtobufEnum {
  static const CreateReviewRequest_OrderStyle ORDER_STYLE_UNSPECIFIED = CreateReviewRequest_OrderStyle._(0, _omitEnumNames ? '' : 'ORDER_STYLE_UNSPECIFIED');
  static const CreateReviewRequest_OrderStyle ORDER_STYLE_BUFFET = CreateReviewRequest_OrderStyle._(1, _omitEnumNames ? '' : 'ORDER_STYLE_BUFFET');
  static const CreateReviewRequest_OrderStyle ORDER_STYLE_ORDER = CreateReviewRequest_OrderStyle._(2, _omitEnumNames ? '' : 'ORDER_STYLE_ORDER');

  static const $core.List<CreateReviewRequest_OrderStyle> values = <CreateReviewRequest_OrderStyle> [
    ORDER_STYLE_UNSPECIFIED,
    ORDER_STYLE_BUFFET,
    ORDER_STYLE_ORDER,
  ];

  static final $core.Map<$core.int, CreateReviewRequest_OrderStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CreateReviewRequest_OrderStyle? valueOf($core.int value) => _byValue[value];

  const CreateReviewRequest_OrderStyle._($core.int v, $core.String n) : super(v, n);
}

class UpdateReviewRequest_OrderStyle extends $pb.ProtobufEnum {
  static const UpdateReviewRequest_OrderStyle ORDER_STYLE_UNSPECIFIED = UpdateReviewRequest_OrderStyle._(0, _omitEnumNames ? '' : 'ORDER_STYLE_UNSPECIFIED');
  static const UpdateReviewRequest_OrderStyle ORDER_STYLE_BUFFET = UpdateReviewRequest_OrderStyle._(1, _omitEnumNames ? '' : 'ORDER_STYLE_BUFFET');
  static const UpdateReviewRequest_OrderStyle ORDER_STYLE_ORDER = UpdateReviewRequest_OrderStyle._(2, _omitEnumNames ? '' : 'ORDER_STYLE_ORDER');

  static const $core.List<UpdateReviewRequest_OrderStyle> values = <UpdateReviewRequest_OrderStyle> [
    ORDER_STYLE_UNSPECIFIED,
    ORDER_STYLE_BUFFET,
    ORDER_STYLE_ORDER,
  ];

  static final $core.Map<$core.int, UpdateReviewRequest_OrderStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UpdateReviewRequest_OrderStyle? valueOf($core.int value) => _byValue[value];

  const UpdateReviewRequest_OrderStyle._($core.int v, $core.String n) : super(v, n);
}

class Review_OrderStyle extends $pb.ProtobufEnum {
  static const Review_OrderStyle ORDER_STYLE_UNSPECIFIED = Review_OrderStyle._(0, _omitEnumNames ? '' : 'ORDER_STYLE_UNSPECIFIED');
  static const Review_OrderStyle ORDER_STYLE_BUFFET = Review_OrderStyle._(1, _omitEnumNames ? '' : 'ORDER_STYLE_BUFFET');
  static const Review_OrderStyle ORDER_STYLE_ORDER = Review_OrderStyle._(2, _omitEnumNames ? '' : 'ORDER_STYLE_ORDER');

  static const $core.List<Review_OrderStyle> values = <Review_OrderStyle> [
    ORDER_STYLE_UNSPECIFIED,
    ORDER_STYLE_BUFFET,
    ORDER_STYLE_ORDER,
  ];

  static final $core.Map<$core.int, Review_OrderStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Review_OrderStyle? valueOf($core.int value) => _byValue[value];

  const Review_OrderStyle._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
