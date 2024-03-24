
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum AllergyType {
  celeryFree,
  crustaceanFree,
  dairyFree,
  eggFree,
  fishFree,
  glutenFree,
  lupineFree,
  mustardFree,
  peanutFree,
  sesameFree,
  shellfishFree,
  soyFree,
  treeNutFree,
  wheatFree,
  FODMAPFree,
  immunoSupportive,
}

extension AllergyTypeExt on AllergyType {
  String get title {
    switch (this) {
      case AllergyType.celeryFree:
        return LocaleKeys.celeryFree.tr();

      case AllergyType.crustaceanFree:
        return LocaleKeys.crustaceanFree.tr();

      case AllergyType.dairyFree:
        return LocaleKeys.dairyFree.tr();

      case AllergyType.eggFree:
        return LocaleKeys.eggFree.tr();

      case AllergyType.fishFree:
        return LocaleKeys.fishFree.tr();

      case AllergyType.glutenFree:
        return LocaleKeys.glutenFree.tr();

      case AllergyType.lupineFree:
        return LocaleKeys.lupineFree.tr();

      case AllergyType.mustardFree:
        return LocaleKeys.mustardFree.tr();

      case AllergyType.peanutFree:
        return LocaleKeys.peanutFree.tr();

      case AllergyType.sesameFree:
        return LocaleKeys.sesameFree.tr();

      case AllergyType.shellfishFree:
        return LocaleKeys.shellfishFree.tr();

      case AllergyType.soyFree:
        return LocaleKeys.soyFree.tr();

      case AllergyType.treeNutFree:
        return LocaleKeys.treeNutFree.tr();

      case AllergyType.wheatFree:
        return LocaleKeys.wheatFree.tr();

      case AllergyType.FODMAPFree:
        return LocaleKeys.FODMAPFree.tr();

      case AllergyType.immunoSupportive:
        return LocaleKeys.immunoSupportive.tr();
    }
  }

  String get apiName {
    switch (this) {
      case AllergyType.celeryFree:
        return 'celery-free';
      case AllergyType.crustaceanFree:
        return 'crustacean-free';
      case AllergyType.dairyFree:
        return 'dairy-free';
      case AllergyType.eggFree:
        return 'egg-free';
      case AllergyType.fishFree:
        return 'fish-free';
      case AllergyType.glutenFree:
        return 'gluten-free';
      case AllergyType.lupineFree:
        return 'lupine-free';
      case AllergyType.mustardFree:
        return 'mustard-free';
      case AllergyType.peanutFree:
        return 'peanut-free';
      case AllergyType.sesameFree:
        return 'sesame-free';
      case AllergyType.shellfishFree:
        return 'shellfish-free';
      case AllergyType.soyFree:
        return 'soy-free';
      case AllergyType.treeNutFree:
        return 'tree-nut-free';
      case AllergyType.wheatFree:
        return 'wheat-free';
      case AllergyType.FODMAPFree:
        return 'fodmap-free';
      case AllergyType.immunoSupportive:
        return 'immuno-supportive';
    }
  }
}
