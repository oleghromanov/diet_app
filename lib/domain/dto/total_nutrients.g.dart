// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_nutrients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalNutrients _$TotalNutrientsFromJson(Map<String, dynamic> json) =>
    TotalNutrients(
      enercKcal: Nutrient.fromJson(json['ENERC_KCAL'] as Map<String, dynamic>),
      fat: Nutrient.fromJson(json['FAT'] as Map<String, dynamic>),
      sugar: Nutrient.fromJson(json['SUGAR'] as Map<String, dynamic>),
      procnt: Nutrient.fromJson(json['PROCNT'] as Map<String, dynamic>),
      chocdf: Nutrient.fromJson(json['CHOCDF'] as Map<String, dynamic>),
      fasat: json['FASAT'] == null
          ? null
          : Nutrient.fromJson(json['FASAT'] as Map<String, dynamic>),
      fatrn: json['FATRN'] == null
          ? null
          : Nutrient.fromJson(json['FATRN'] as Map<String, dynamic>),
      fams: json['FAMS'] == null
          ? null
          : Nutrient.fromJson(json['FAMS'] as Map<String, dynamic>),
      fapu: json['FAPU'] == null
          ? null
          : Nutrient.fromJson(json['FAPU'] as Map<String, dynamic>),
      cHOCDFNet: json['CHOCDF.net'] == null
          ? null
          : Nutrient.fromJson(json['CHOCDF.net'] as Map<String, dynamic>),
      fibtg: json['FIBTG'] == null
          ? null
          : Nutrient.fromJson(json['FIBTG'] as Map<String, dynamic>),
      chole: json['CHOLE'] == null
          ? null
          : Nutrient.fromJson(json['CHOLE'] as Map<String, dynamic>),
      na: json['NA'] == null
          ? null
          : Nutrient.fromJson(json['NA'] as Map<String, dynamic>),
      ca: json['CA'] == null
          ? null
          : Nutrient.fromJson(json['CA'] as Map<String, dynamic>),
      mg: json['MG'] == null
          ? null
          : Nutrient.fromJson(json['MG'] as Map<String, dynamic>),
      k: json['K'] == null
          ? null
          : Nutrient.fromJson(json['K'] as Map<String, dynamic>),
      fe: json['FE'] == null
          ? null
          : Nutrient.fromJson(json['FE'] as Map<String, dynamic>),
      zn: json['ZN'] == null
          ? null
          : Nutrient.fromJson(json['ZN'] as Map<String, dynamic>),
      p: json['P'] == null
          ? null
          : Nutrient.fromJson(json['P'] as Map<String, dynamic>),
      vitaRae: json['VITA_RAE'] == null
          ? null
          : Nutrient.fromJson(json['VITA_RAE'] as Map<String, dynamic>),
      vitc: json['VITC'] == null
          ? null
          : Nutrient.fromJson(json['VITC'] as Map<String, dynamic>),
      thia: json['THIA'] == null
          ? null
          : Nutrient.fromJson(json['THIA'] as Map<String, dynamic>),
      ribf: json['RIBF'] == null
          ? null
          : Nutrient.fromJson(json['RIBF'] as Map<String, dynamic>),
      nia: json['NIA'] == null
          ? null
          : Nutrient.fromJson(json['NIA'] as Map<String, dynamic>),
      vitb6a: json['VITB6A'] == null
          ? null
          : Nutrient.fromJson(json['VITB6A'] as Map<String, dynamic>),
      foldfe: json['FOLDFE'] == null
          ? null
          : Nutrient.fromJson(json['FOLDFE'] as Map<String, dynamic>),
      folfd: json['FOLFD'] == null
          ? null
          : Nutrient.fromJson(json['FOLFD'] as Map<String, dynamic>),
      folac: json['FOLAC'] == null
          ? null
          : Nutrient.fromJson(json['FOLAC'] as Map<String, dynamic>),
      vitb12: json['VITB12'] == null
          ? null
          : Nutrient.fromJson(json['VITB12'] as Map<String, dynamic>),
      vitd: json['VITD'] == null
          ? null
          : Nutrient.fromJson(json['VITD'] as Map<String, dynamic>),
      tocpha: json['TOCPHA'] == null
          ? null
          : Nutrient.fromJson(json['TOCPHA'] as Map<String, dynamic>),
      vitk1: json['VITK1'] == null
          ? null
          : Nutrient.fromJson(json['VITK1'] as Map<String, dynamic>),
      water: json['WATER'] == null
          ? null
          : Nutrient.fromJson(json['WATER'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TotalNutrientsToJson(TotalNutrients instance) =>
    <String, dynamic>{
      'ENERC_KCAL': instance.enercKcal.toJson(),
      'FAT': instance.fat.toJson(),
      'CHOCDF': instance.chocdf.toJson(),
      'SUGAR': instance.sugar.toJson(),
      'PROCNT': instance.procnt.toJson(),
      'FASAT': instance.fasat?.toJson(),
      'FATRN': instance.fatrn?.toJson(),
      'FAMS': instance.fams?.toJson(),
      'FAPU': instance.fapu?.toJson(),
      'CHOCDF.net': instance.cHOCDFNet?.toJson(),
      'FIBTG': instance.fibtg?.toJson(),
      'CHOLE': instance.chole?.toJson(),
      'NA': instance.na?.toJson(),
      'CA': instance.ca?.toJson(),
      'MG': instance.mg?.toJson(),
      'K': instance.k?.toJson(),
      'FE': instance.fe?.toJson(),
      'ZN': instance.zn?.toJson(),
      'P': instance.p?.toJson(),
      'VITA_RAE': instance.vitaRae?.toJson(),
      'VITC': instance.vitc?.toJson(),
      'THIA': instance.thia?.toJson(),
      'RIBF': instance.ribf?.toJson(),
      'NIA': instance.nia?.toJson(),
      'VITB6A': instance.vitb6a?.toJson(),
      'FOLDFE': instance.foldfe?.toJson(),
      'FOLFD': instance.folfd?.toJson(),
      'FOLAC': instance.folac?.toJson(),
      'VITB12': instance.vitb12?.toJson(),
      'VITD': instance.vitd?.toJson(),
      'TOCPHA': instance.tocpha?.toJson(),
      'VITK1': instance.vitk1?.toJson(),
      'WATER': instance.water?.toJson(),
    };
