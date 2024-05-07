import 'dart:convert';

import 'package:diet_app/app/resources/app_constants.dart';
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
    List<String> healthLabels = [];
    List<String> dietLabels = [];
    for (AllergyType allergy in allergies) {
      healthLabels.add(allergy.apiName);
    }
    for (DietType diet in diets) {
      if (AppConstants.dietLabels.contains(diet)) {
        dietLabels.add(diet.apiName);
      } else {
        healthLabels.add(diet.apiName);
      }
    }
    return <String, dynamic>{
      "size": size,
      "plan": {
        "accept": {
          "all": [
            {
              "health": healthLabels,
            },
            {
              "diet": dietLabels,
            }
          ]
        },
        "fit": {
          "ENERC_KCAL": {
            "min": calories.min,
            "max": calories.max,
          },
        },
        "sections": {
          "Breakfast": {
            "accept": {
              "all": [
                {
                  "meal": ["breakfast"]
                }
              ]
            },
            "fit": {
              "ENERC_KCAL": {"min": 100, "max": ((calories.max ?? 2000) * 0.3).floor()}
            }
          },
          "Lunch": {
            "accept": {
              "all": [
                {
                  "meal": ["lunch/dinner"]
                }
              ]
            },
            "fit": {
              "ENERC_KCAL": {"min": 300, "max": ((calories.max ?? 2000) * 0.45).floor()}
            }
          },
          "Dinner": {
            "accept": {
              "all": [
                {
                  "meal": ["lunch/dinner"]
                }
              ]
            },
            "fit": {
              "ENERC_KCAL": {"min": 200, "max": ((calories.max ?? 2000) * 0.45).floor()}
            }
          }
        }
      }
    };
  }
}
