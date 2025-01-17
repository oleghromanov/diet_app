import 'package:diet_app/domain/dto/response/recipe_uri_response.dart';
import 'package:retrofit/retrofit.dart';

import 'package:dio/dio.dart';

part 'recipes_remote_source.g.dart';

@RestApi(baseUrl: 'https://api.edamam.com/api/recipes/v2')
abstract class RecipesRemoteSource {
  factory RecipesRemoteSource({required Dio dio}) => _RecipesRemoteSource(dio);

  @GET('')
  Future<RecipeUriResponse> searchRecipes({
    @Query('type') String type = 'public',
    @Query('calories') String? calories,
    @Query('diet') List<String>? diet,
    @Query('health') List<String>? health,
    @Query('q') required String searchText,
    @Query('app_id') required String appId,
    @Query('app_key') required String appKey,
  });

  @GET('/by-uri')
  Future<RecipeUriResponse> getRecipesByUri({
    @Query('type') String type = 'public',
    @Query('uri') required List<String> uri,
    @Query('app_id') required String appId,
    @Query('app_key') required String appKey,
  });
}