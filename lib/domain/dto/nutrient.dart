import 'package:json_annotation/json_annotation.dart';

part 'nutrient.g.dart';

@JsonSerializable(explicitToJson: true)
class Nutrient {
  String label;
  double quantity;
  String unit;

  Nutrient({
    required this.label,
    required this.quantity,
    required this.unit,
  });

  factory Nutrient.fromJson(Map<String, dynamic> json) => _$NutrientFromJson(json);

  Map<String, dynamic> toJson() => _$NutrientToJson(this);

}
