import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_steps_model.freezed.dart';
part 'form_steps_model.g.dart';

enum StepStatus { completed, pending }

@freezed
class FormStepModel with _$FormStepModel {
  const factory FormStepModel({
    required String title,
    required String description,
    // required IconData? icon,
    // required StepStatus status,
    // required TextfeildWidget formWidget,
  }) = _FormStepModel;

  factory FormStepModel.fromJson(Map<String, dynamic> json) =>
      _$FormStepModelFromJson(json);
}
