import 'package:diet_app/domain/dto/day_plan.dart';

class CreatePlanResponse {
  CreatePlanResponse({
    required this.status,
    required this.selection,
  });

  final String status;
  final List<DayPlan> selection;

  factory CreatePlanResponse.fromJson(Map<String, dynamic> json) {
    return CreatePlanResponse(
      status: json['status'] as String,
      selection: (json['selection'] as List<dynamic>).map((e) => DayPlan.fromJson(e)).toList(),
    );
  }
}
