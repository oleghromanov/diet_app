import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum HomeAction {
  changePlan,
  logout,
}

extension HomeActionExt on HomeAction {
  String get title {
    switch (this) {
      case HomeAction.changePlan:
        return tr(LocaleKeys.changePlan);
      case HomeAction.logout:
        return tr(LocaleKeys.logout);
    }
  }
}
