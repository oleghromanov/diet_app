import 'package:dartz/dartz.dart';
import 'package:diet_app/app/resources/app_constants.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/errors/error_handler.dart';
import 'package:diet_app/data/sources/remote/nutrition_remote_source.dart';
import 'package:diet_app/domain/dto/calories_range.dart';
import 'package:diet_app/domain/dto/day_plan.dart';
import 'package:diet_app/domain/dto/request/create_plan_body.dart';
import 'package:diet_app/domain/enums/allergy_type.dart';
import 'package:diet_app/domain/enums/diet_type.dart';

class NutritionRepository {
  NutritionRepository({required this.nutritionRemoteSource});

  final NutritionRemoteSource nutritionRemoteSource;

  Future<Either<List<DayPlan>, AppError>> createPlan({
    required List<AllergyType> allergies,
    required List<DietType> diets,
    required CaloriesRange calories,
    int size = 7,
  }) async {
    try {
      final response = await nutritionRemoteSource.createPlan(
        body: CreatePlanBody(
          size: size,
          allergies: allergies,
          diets: diets,
          calories: calories,
        ),
        appId: AppConstants.appId,
        authorization: AppConstants.authorization
      );
      return Left(response.selection);
    } catch (error, stack) {
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    }
  }
}
