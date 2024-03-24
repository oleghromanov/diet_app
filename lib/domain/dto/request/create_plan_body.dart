import 'dart:convert';

import 'package:diet_app/domain/dto/calories_range.dart';
import 'package:diet_app/domain/enums/allergy_type.dart';
import 'package:diet_app/domain/enums/diet_type.dart';

class CreatePlanBody {
  CreatePlanBody({
    required this.size,
    required this.allergies,
    required this.diets,
    required this.calories,
  });

  final int size;
  final List<AllergyType> allergies;
  final List<DietType> diets;
  final CaloriesRange calories;

  Map<String, dynamic> toJson() {
    List<String> health = [];
    for (AllergyType allergy in allergies) {
      health.add(allergy.apiName);
    }
    for (DietType diet in diets) {
      health.add(diet.apiName);
    }
    return <String, dynamic>{
      'size': size,
      "plan": {
        "accept": {
          "all": [
            {
              "health": health,
            }
          ]
        },
        "fit": {
          "ENERC_KCAL": {
            "min": calories.min,
            "max": calories.max,
          },
        },
      }
    };
  }

}
