import 'package:dartz/dartz.dart';
import 'package:diet_app/app/resources/app_constants.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/errors/error_handler.dart';
import 'package:diet_app/data/sources/remote/recipes_remote_source.dart';
import 'package:diet_app/domain/dto/recipe.dart';

class RecipesRepository {
  RecipesRepository({required this.recipesRemoteSource});

  final RecipesRemoteSource recipesRemoteSource;

  Future<Either<List<Recipe>, AppError>> getRecipesByUri({
    required List<String> uri,
  }) async {
    try {
      final response = await recipesRemoteSource.getRecipesByUri(
        uri: uri,
        appId: AppConstants.appId,
        appKey: AppConstants.appKey,
      );
      return Left(response.hits);
    } catch (error, stack) {
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    }
  }

  Future<Either<List<Recipe>, AppError>> searchRecipes({
    required String searchText,
  }) async {
    try {
      final response = await recipesRemoteSource.searchRecipes(
        searchText: searchText,
        appId: AppConstants.appId,
        appKey: AppConstants.appKey,
      );
      return Left(response.hits);
    } catch (error, stack) {
      return Right(ErrorHandler.handleError(error, stackTrace: stack));
    }
  }
}
