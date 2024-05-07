import 'dart:async';

import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/data/repositories/auth_repository.dart';
import 'package:diet_app/data/sources/local/secure_local_storage.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/domain/enums/home_action.dart';
import 'package:diet_app/domain/enums/registration_stage.dart';
import 'package:diet_app/domain/models/day_plan_model.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:diet_app/presentation/screens/registration/bloc/registration_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';

part 'home_event.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<Init>(_init);
    on<OnActionPressed>(_onActionPressed);
    add(const HomeEvent.init());
  }

  final AuthRepository authRepository = Injector.instance();
  final SecureLocalStorage secureLocalStorage = Injector.instance();

  FutureOr<void> _init(Init event, Emitter<HomeState> emit) async {
     await _getUser(emit);
  }

  FutureOr<void> _onActionPressed(OnActionPressed event, Emitter<HomeState> emit) async {
    switch (event.action) {
      case HomeAction.changePlan:
        if (state.user != null) emit(state.copyWith(action: NavigationAction(routeName: RegistrationRouter.name, data: state.user)));
        break;
      case HomeAction.logout:
        secureLocalStorage.setEmail(null);
        emit(state.copyWith(action: NavigationAction(routeName: AuthRouter.name, )));
        break;
    }
  }

  FutureOr<void> _getUser(Emitter<HomeState> emit) async {
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
    }
  }
  }
}
