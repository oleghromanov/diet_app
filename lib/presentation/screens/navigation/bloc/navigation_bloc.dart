import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/data/repositories/auth_repository.dart';
import 'package:diet_app/data/sources/local/secure_local_storage.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:diet_app/presentation/screens/favourites/bloc/favourites_bloc.dart';
import 'package:diet_app/presentation/screens/home/bloc/home_bloc.dart';
import 'package:diet_app/presentation/screens/search/bloc/search_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';

part 'navigation_event.dart';

part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc({
    required this.homeBloc,
    required this.searchBloc,
    required this.favouritesBloc,
  }) : super(NavigationState()) {
    on<Init>(_init);
    on<UserChanged>(_userChanged);
    on<OnLikeClicked>(_onLikeClicked);
    add(const NavigationEvent.init());
  }

  final HomeBloc homeBloc;
  final SearchBloc searchBloc;
  final FavouritesBloc favouritesBloc;

  final AuthRepository authRepository = Injector.instance();
  final SecureLocalStorage secureLocalStorage = Injector.instance();

  FutureOr<void> _init(Init event, Emitter<NavigationState> emit) async {
    await _getUser(emit);
  }

  FutureOr<void> _getUser(Emitter<NavigationState> emit) async {
    UserModel? user;
    AppError? error;
    final email = await secureLocalStorage.getEmail();
    if (email != null && email.isNotEmpty) {
      final result = await authRepository.getUser(email: email);
      result.fold(
        (data) => user = data,
        (e) => error = e,
      );

      if (user != null) {
        emit(state.copyWith(user: user));
        homeBloc.add(HomeEvent.initUser(user!));
        searchBloc.add(SearchEvent.initUser(user!));
        favouritesBloc.add(FavouritesEvent.initUser(user!));
        // } else {
        //   emit(state.copyWith(action: NavigationAction(routeName: AuthRouter.name)));
      }
    }
  }

  FutureOr<void> _userChanged(UserChanged event, Emitter<NavigationState> emit) async {
    bool success = false;
    final result = await authRepository.setUser(user: event.user);
    result.fold(
      (data) => success = data,
      (e) {},
    );
    if (success) {
      homeBloc.add(HomeEvent.initUser(event.user));
      searchBloc.add(SearchEvent.initUser(event.user));
      favouritesBloc.add(FavouritesEvent.initUser(event.user));
      emit(state.copyWith(user: event.user));
      emit(state.copyWith());
    }
  }

  FutureOr<void> _onLikeClicked(OnLikeClicked event, Emitter<NavigationState> emit) async {
    if (state.user == null) return;
    // UserModel user = state.user!;
    UserModel user = UserModel.fromJson(jsonDecode(jsonEncode(state.user!)));
    List<Recipe> favourites = List.from(user.favourites);
    if (favourites.any((e) => e.uri == event.recipe.uri)) {
     favourites.removeWhere((e) => e.uri == event.recipe.uri);} else {
     favourites.add(event.recipe);}
    user = user.copyWith(favourites: favourites);
    add(NavigationEvent.userChanged(user));
  }
}
