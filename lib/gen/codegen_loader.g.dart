// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "welcome": "Добро пожаловать!",
  "authDescription": "Мы подберем диету\nспециально для тебя",
  "signIn": "Войти",
  "registration": "Регистрация",
  "email": "Почта",
  "login": "Вход",
  "name": "Имя",
  "password": "Пароль",
  "nameHint": "Введите имя",
  "emailHint": "Введите почту",
  "emailError": "Почта введена некорректно",
  "passwordHint": "Введите пароль",
  "allergies": "Аллергии",
  "allergiesDescription": "Есть ли у вас какие-либо аллергии?",
  "diets": "Диеты",
  "dietsDescription": "Выберите тип диеты, которому вы хотите следовать",
  "next": "Продолжить",
  "celeryFree": "Без сельдерея",
  "crustaceanFree": "Без ракообразных",
  "dairyFree": "Без молочных продуктов",
  "eggFree": "Без яиц",
  "fishFree": "Без рыбы",
  "glutenFree": "Без глютена",
  "lupineFree": "Без люпина",
  "mustardFree": "Без горчицы",
  "peanutFree": "Без арахиса",
  "sesameFree": "Без кунжута",
  "shellfishFree": "Без моллюсков",
  "soyFree": "Без сои, без орехов",
  "treeNutFree": "Без иммуностимулирующее",
  "wheatFree": "Без пшеницы",
  "FODMAPFree": "Без FODMAP",
  "immunoSupportive": "Иммуносупрессивный",
  "alcoholFree": "Безалкогольный",
  "balanced": "Сбалансированный",
  "highFiber": "С высоким содержанием клетчатки",
  "highProtein": "С высоким содержанием белка",
  "keto": "Кето-диета",
  "kidneyFriendly": "Полезна для почек",
  "kosher": "Кошерная",
  "lowCarb": "низкоуглеводная",
  "lowFat": "низкокалорийный",
  "lowPotassium": "С низким содержанием калия",
  "lowSodium": "С низким содержанием натрия",
  "mediterranean": "Средиземноморский",
  "noOilAdded": "без добавления масла",
  "noSugar": "Без сахара",
  "paleo": "Палео",
  "pescatarian": "Пескетарианский",
  "porkFree": "Без свинины",
  "redMeatFree": "Без красного мяса",
  "sugarConscious": "Без сахара",
  "vegan": "Веган",
  "vegetarian": "Вегетарианец",
  "molluskFree": "Без моллюсков",
  "sulfiteFree": "Без сульфатов"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru};
}
