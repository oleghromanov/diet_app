import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_state.dart';

part 'recipe_event.dart';

part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc({required Recipe recipe, bool inFavorite = false})
      : super(RecipeState(
          recipe: recipe,
          inFavorite: inFavorite,
        )) {
    on<Init>(_init);
    on<InFavoriteChanged>(_inFavoriteChanged);
  }

  FutureOr<void> _init(Init event, Emitter<RecipeState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _inFavoriteChanged(InFavoriteChanged event, Emitter<RecipeState> emit) {
    emit(state.copyWith(inFavorite: !state.inFavorite));
  }
}
