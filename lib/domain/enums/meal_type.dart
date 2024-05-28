import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum MealType {
  breakfast,
  lunch,
  dinner,
}

extension MealTypeExt on MealType {
  String get title {
    switch (this) {
      case MealType.breakfast:
        return LocaleKeys.breakfast.tr();
      case MealType.lunch:
        return LocaleKeys.lunch.tr();
      case MealType.dinner:
        return LocaleKeys.dinner.tr();
    }
  }
}
