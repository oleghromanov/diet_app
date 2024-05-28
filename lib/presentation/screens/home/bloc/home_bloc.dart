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
    on<InitUser>(_initUser);
    on<OnActionPressed>(_onActionPressed);
  }

  final SecureLocalStorage secureLocalStorage = Injector.instance();

  FutureOr<void> _init(Init event, Emitter<HomeState> emit) async {}

  FutureOr<void> _initUser(InitUser event, Emitter<HomeState> emit) async {
    final user = event.user;
    emit(state.copyWith(user: null));
    emit(state.copyWith(user: user));
  }

  FutureOr<void> _onActionPressed(OnActionPressed event, Emitter<HomeState> emit) async {
    switch (event.action) {
      case HomeAction.changePlan:
        if (state.user != null) {
          emit(state.copyWith(
              action: NavigationAction(
            routeName: RegistrationRouter.name,
            data: state.user,
          )));
        }
        break;
      case HomeAction.logout:
        secureLocalStorage.setEmail(null);
        emit(state.copyWith(action: NavigationAction(routeName: AuthRouter.name)));
        break;
    }
  }


}
