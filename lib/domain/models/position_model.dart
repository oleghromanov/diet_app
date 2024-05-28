import 'package:diet_app/domain/enums/meal_type.dart';

class PositionModel {
   PositionModel({
      required this.day,
      required this.mealType,
   });

   final int day;
   final MealType mealType;

   @override
   bool operator ==(Object other) {
      if (identical(this, other)) return true;

      return other is PositionModel &&
          other.day == day &&
          other.mealType == mealType;
   }

   @override
   int get hashCode => day.hashCode ^ mealType.hashCode;
}