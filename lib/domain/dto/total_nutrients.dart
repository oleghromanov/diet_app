import 'package:json_annotation/json_annotation.dart';

import 'nutrient.dart';

part 'total_nutrients.g.dart';

@JsonSerializable(explicitToJson: true)
class TotalNutrients {
  const TotalNutrients({
    required this.enercKcal,
    required this.fat,
    required this.sugar,
    required this.procnt,
    required this.chocdf,
    this.fasat,
    this.fatrn,
    this.fams,
    this.fapu,
    this.cHOCDFNet,
    this.fibtg,
    this.chole,
    this.na,
    this.ca,
    this.mg,
    this.k,
    this.fe,
    this.zn,
    this.p,
    this.vitaRae,
    this.vitc,
    this.thia,
    this.ribf,
    this.nia,
    this.vitb6a,
    this.foldfe,
    this.folfd,
    this.folac,
    this.vitb12,
    this.vitd,
    this.tocpha,
    this.vitk1,
    this.water,
  });
  @JsonKey(name: 'ENERC_KCAL')
  final Nutrient enercKcal;
  @JsonKey(name: 'FAT')
  final Nutrient fat;
  @JsonKey(name: 'CHOCDF')
  final Nutrient chocdf;
  @JsonKey(name: 'SUGAR')
  final Nutrient sugar;
  @JsonKey(name: 'PROCNT')
  final Nutrient procnt;
  @JsonKey(name: 'FASAT')
  final Nutrient? fasat;
  @JsonKey(name: 'FATRN')
  final Nutrient? fatrn;
  @JsonKey(name: 'FAMS')
  final Nutrient? fams;
  @JsonKey(name: 'FAPU')
  final Nutrient? fapu;
  @JsonKey(name: 'CHOCDF.net')
  final Nutrient? cHOCDFNet;
  @JsonKey(name: 'FIBTG')
  final Nutrient? fibtg;
  @JsonKey(name: 'CHOLE')
  final Nutrient? chole;
  @JsonKey(name: 'NA')
  final Nutrient? na;
  @JsonKey(name: 'CA')
  final Nutrient? ca;
  @JsonKey(name: 'MG')
  final Nutrient? mg;
  @JsonKey(name: 'K')
  final Nutrient? k;
  @JsonKey(name: 'FE')
  final Nutrient? fe;
  @JsonKey(name: 'ZN')
  final Nutrient? zn;
  @JsonKey(name: 'P')
  final Nutrient? p;
  @JsonKey(name: 'VITA_RAE')
  final Nutrient? vitaRae;
  @JsonKey(name: 'VITC')
  final Nutrient? vitc;
  @JsonKey(name: 'THIA')
  final Nutrient? thia;
  @JsonKey(name: 'RIBF')
  final Nutrient? ribf;
  @JsonKey(name: 'NIA')
  final Nutrient? nia;
  @JsonKey(name: 'VITB6A')
  final Nutrient? vitb6a;
  @JsonKey(name: 'FOLDFE')
  final Nutrient? foldfe;
  @JsonKey(name: 'FOLFD')
  final Nutrient? folfd;
  @JsonKey(name: 'FOLAC')
  final Nutrient? folac;
  @JsonKey(name: 'VITB12')
  final Nutrient? vitb12;
  @JsonKey(name: 'VITD')
  final Nutrient? vitd;
  @JsonKey(name: 'TOCPHA')
  final Nutrient? tocpha;
  @JsonKey(name: 'VITK1')
  final Nutrient? vitk1;
  @JsonKey(name: 'WATER')
  final Nutrient? water;

  factory TotalNutrients.fromJson(Map<String, dynamic> json) => _$TotalNutrientsFromJson(json);

  Map<String, dynamic> toJson() => _$TotalNutrientsToJson(this);

}