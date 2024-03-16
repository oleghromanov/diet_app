import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum DietType {
  alcoholFree,
  balanced,
  DASH,
  highFiber,
  highProtein,
  keto,
  kidneyFriendly,
  kosher,
  lowCarb,
  lowFat,
  lowPotassium,
  lowSodium,
  mediterranean,
  noOilAdded,
  noSugar,
  paleo,
  pescatarian,
  porkFree,
  redMeatFree,
  sugarConscious,
  vegan,
  vegetarian,
  molluskFree,
  sulfiteFree,
}

extension DietTypeExt on DietType {
  String get title {
    switch (this) {
      case DietType.alcoholFree:
        return LocaleKeys.alcoholFree.tr();
      case DietType.balanced:
        return LocaleKeys.balanced.tr();
      case DietType.DASH:
        return DietType.DASH.toString();
      case DietType.highFiber:
        return LocaleKeys.highFiber.tr();
      case DietType.highProtein:
        return LocaleKeys.highProtein.tr();
      case DietType.keto:
        return LocaleKeys.keto.tr();
      case DietType.kidneyFriendly:
        return LocaleKeys.kidneyFriendly.tr();
      case DietType.kosher:
        return LocaleKeys.kosher.tr();
      case DietType.lowCarb:
        return LocaleKeys.lowCarb.tr();
      case DietType.lowFat:
        return LocaleKeys.lowFat.tr();
      case DietType.lowPotassium:
        return LocaleKeys.lowPotassium.tr();
      case DietType.lowSodium:
        return LocaleKeys.lowSodium.tr();
      case DietType.mediterranean:
        return LocaleKeys.mediterranean.tr();
      case DietType.noOilAdded:
        return LocaleKeys.noOilAdded.tr();
      case DietType.noSugar:
        return LocaleKeys.noSugar.tr();
      case DietType.paleo:
        return LocaleKeys.paleo.tr();
      case DietType.pescatarian:
        return LocaleKeys.pescatarian.tr();
      case DietType.porkFree:
        return LocaleKeys.porkFree.tr();
      case DietType.redMeatFree:
        return LocaleKeys.redMeatFree.tr();
      case DietType.sugarConscious:
        return LocaleKeys.sugarConscious.tr();
      case DietType.vegan:
        return LocaleKeys.vegan.tr();
      case DietType.vegetarian:
        return LocaleKeys.vegetarian.tr();
      case DietType.molluskFree:
        return LocaleKeys.molluskFree.tr();
      case DietType.sulfiteFree:
        return LocaleKeys.sulfiteFree.tr();
    }  }
}