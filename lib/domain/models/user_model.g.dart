// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      email: json['email'] as String,
      mealPlan: (json['mealPlan'] as List<dynamic>)
          .map((e) => DayPlanModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      allergies: (json['allergies'] as List<dynamic>)
          .map((e) => $enumDecode(_$AllergyTypeEnumMap, e))
          .toList(),
      diets: (json['diets'] as List<dynamic>)
          .map((e) => $enumDecode(_$DietTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mealPlan': instance.mealPlan.map((e) => e.toJson()).toList(),
      'allergies':
          instance.allergies.map((e) => _$AllergyTypeEnumMap[e]!).toList(),
      'diets': instance.diets.map((e) => _$DietTypeEnumMap[e]!).toList(),
    };

const _$AllergyTypeEnumMap = {
  AllergyType.celeryFree: 'celeryFree',
  AllergyType.crustaceanFree: 'crustaceanFree',
  AllergyType.dairyFree: 'dairyFree',
  AllergyType.eggFree: 'eggFree',
  AllergyType.fishFree: 'fishFree',
  AllergyType.glutenFree: 'glutenFree',
  AllergyType.lupineFree: 'lupineFree',
  AllergyType.mustardFree: 'mustardFree',
  AllergyType.peanutFree: 'peanutFree',
  AllergyType.sesameFree: 'sesameFree',
  AllergyType.shellfishFree: 'shellfishFree',
  AllergyType.soyFree: 'soyFree',
  AllergyType.treeNutFree: 'treeNutFree',
  AllergyType.wheatFree: 'wheatFree',
  AllergyType.FODMAPFree: 'FODMAPFree',
  AllergyType.immunoSupportive: 'immunoSupportive',
};

const _$DietTypeEnumMap = {
  DietType.alcoholFree: 'alcoholFree',
  DietType.balanced: 'balanced',
  DietType.DASH: 'DASH',
  DietType.highFiber: 'highFiber',
  DietType.highProtein: 'highProtein',
  DietType.keto: 'keto',
  DietType.kidneyFriendly: 'kidneyFriendly',
  DietType.kosher: 'kosher',
  DietType.lowCarb: 'lowCarb',
  DietType.lowFat: 'lowFat',
  DietType.lowPotassium: 'lowPotassium',
  DietType.lowSodium: 'lowSodium',
  DietType.mediterranean: 'mediterranean',
  DietType.noOilAdded: 'noOilAdded',
  DietType.noSugar: 'noSugar',
  DietType.paleo: 'paleo',
  DietType.pescatarian: 'pescatarian',
  DietType.porkFree: 'porkFree',
  DietType.redMeatFree: 'redMeatFree',
  DietType.sugarConscious: 'sugarConscious',
  DietType.vegan: 'vegan',
  DietType.vegetarian: 'vegetarian',
  DietType.molluskFree: 'molluskFree',
  DietType.sulfiteFree: 'sulfiteFree',
};
