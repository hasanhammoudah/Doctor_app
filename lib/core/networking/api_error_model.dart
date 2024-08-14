import 'package:doctor/core/helpers/extenstions.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  final Map<String, dynamic>? errors;

  ApiErrorModel({
    this.errors,
    this.message,
    this.code,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  //TODO what means this???
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  // String getAllErrorMessages() {
  //   if (errors.isNullOrEmpty()) return message ?? "unknown Error occured";
  //   final  errorMessage = errors!.entries.map()
  // }
}
