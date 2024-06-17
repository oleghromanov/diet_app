import 'dart:async';

import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_state.dart';

part 'favourites_event.dart';

part 'favourites_bloc.freezed.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc() : super(FavouritesState()) {
    on<Init>(_init);
    on<InitUser>(_initUser);
    on<OnLikePressed>(_onLikePressed);
  }

  FutureOr<void> _init(Init event, Emitter<FavouritesState> emit) async {}

  FutureOr<void> _initUser(InitUser event, Emitter<FavouritesState> emit) async {
    emit(state.copyWith(user: event.user, favourites: event.user.favourites));
    emit(state.copyWith());
  }

  FutureOr<void> _onLikePressed(OnLikePressed event, Emitter<FavouritesState> emit) async {

  }

}
