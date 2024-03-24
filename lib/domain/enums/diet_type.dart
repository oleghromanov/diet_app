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
        return DietType.DASH.name;
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
    }
  }

  String get apiName {
    switch (this) {
      case DietType.alcoholFree:
        return 'alcohol-free';
      case DietType.balanced:
        return 'balanced';
      case DietType.DASH:
        return 'DASH';
      case DietType.highFiber:
        return 'high-fiber';
      case DietType.highProtein:
        return 'high-protein';
      case DietType.keto:
        return 'keto-friendly';
      case DietType.kidneyFriendly:
        return 'kidney-friendly';
      case DietType.kosher:
        return 'kosher';
      case DietType.lowCarb:
        return 'low-carb';
      case DietType.lowFat:
        return 'low-fat';
      case DietType.lowPotassium:
        return 'low-potassium';
      case DietType.lowSodium:
        return 'low-sodium';
      case DietType.mediterranean:
        return 'Mediterranean';
      case DietType.noOilAdded:
        return 'No-oil-added';
      case DietType.noSugar:
        return 'no-sugar';
      case DietType.paleo:
        return 'paleo';
      case DietType.pescatarian:
        return 'pescatarian';
      case DietType.porkFree:
        return 'pork-free';
      case DietType.redMeatFree:
        return 'red-meat-free';
      case DietType.sugarConscious:
        return 'sugar-conscious';
      case DietType.vegan:
        return 'vegan';
      case DietType.vegetarian:
        return 'vegetarian';
      case DietType.molluskFree:
        return 'mollusk-free';
      case DietType.sulfiteFree:
        return 'sulfite-free';
    }
  }
}