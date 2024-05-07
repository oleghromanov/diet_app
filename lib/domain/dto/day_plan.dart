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
      breakfast: json['Breakfast']['assigned'] as String,
      lunch: json['Lunch']['assigned'] as String,
      dinner: json['Dinner']['assigned'] as String,
    );
  }

  List<String> toList() {
    return [breakfast, lunch, dinner];
  }
}
