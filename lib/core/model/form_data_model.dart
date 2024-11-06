import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_data_model.freezed.dart';
part 'form_data_model.g.dart';

@freezed
class FormDataModel with _$FormDataModel {
  const factory FormDataModel({
    required String subject,
    required String previewText,
    required String fromName,
    required String fromEmail,
  }) = _FormDataModel;

  factory FormDataModel.fromJson(Map<String, dynamic> json) =>
      _$FormDataModelFromJson(json);
}
