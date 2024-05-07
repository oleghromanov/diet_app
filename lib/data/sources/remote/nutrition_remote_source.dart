import 'package:diet_app/domain/dto/response/create_plan_response.dart';
import 'package:retrofit/retrofit.dart';

import 'package:diet_app/domain/dto/request/create_plan_body.dart';
import 'package:dio/dio.dart';

part 'nutrition_remote_source.g.dart';

@RestApi(baseUrl: 'https://api.edamam.com/api/meal-planner/v1')
abstract class NutritionRemoteSource {
  factory NutritionRemoteSource({required Dio dio}) => _NutritionRemoteSource(dio);

  @POST('/{app_id}/select')
  Future<CreatePlanResponse> createPlan({
    @Header('Authorization') required String authorization,
    @Body() required CreatePlanBody body,
    @Path('app_id') required String appId,
  });
}