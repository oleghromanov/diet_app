import 'package:diet_app/domain/enums/diet_type.dart';

class AppConstants {
  static const String appId = 'f4c5bcae';
  static const String appUser = 'Hostyy';
  static const String appKey = 'f18dbe576d96222c85a5fea2b5ba3c10';
  static const String authorization = 'Basic ZjRjNWJjYWU6ZjE4ZGJlNTc2ZDk2MjIyYzg1YTVmZWEyYjViYTNjMTA=';
  static const List<DietType> dietLabels = [
    DietType.balanced,
    DietType.highFiber,
    DietType.highProtein,
    DietType.lowCarb,
    DietType.lowFat,
    DietType.lowSodium,
  ];
}