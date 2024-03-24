class DayPlan {
  DayPlan({
    required this.breakfast,
    required this.lunch,
    required this.dinner,
  });

  final String breakfast;
  final String lunch;
  final String dinner;

  factory DayPlan.fromJson(Map<String, dynamic> json) {
    return DayPlan(
      breakfast: json['assigned'] as String,
      lunch: json['assigned'] as String,
      dinner: json['assigned'] as String,
    );
  }
}
