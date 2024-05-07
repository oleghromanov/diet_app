import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_state.dart';

part 'recipe_event.dart';

part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc({required Recipe recipe}) : super(RecipeState(recipe: recipe)) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<RecipeState> emit) {
    emit(state.copyWith());
  }
}
