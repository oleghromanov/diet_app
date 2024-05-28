import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/data/repositories/auth_repository.dart';
import 'package:diet_app/data/sources/local/secure_local_storage.dart';
import 'package:diet_app/di/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';

part 'auth_event.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<Init>(_init);
    on<SignInClicked>(_signInClicked);
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    add(const AuthEvent.init());
  }

  final AuthRepository authRepository = Injector.instance();
  final SecureLocalStorage storage = Injector.instance();

  FutureOr<void> _init(Init event, Emitter<AuthState> emit) async {
   // await storage.setEmail(null);
    String? email = await storage.getEmail();
    if (email != null) emit(state.copyWith(action: NavigationAction(routeName: NavigationRouter.name)));
  }

  Future<FutureOr<void>> _signInClicked(SignInClicked event, Emitter<AuthState> emit) async {
    if (!state.isSignIn) {
      emit(state.copyWith(isSignIn: true, buttonEnabled: false));
    } else {
      emit(state.copyWith(isLoading: true));
      bool success = false;
      AppError? error;
      final result = await authRepository.signIn(email: state.email, password: state.password);
      result.fold(
        (data) => success = data,
        (e) => error = e,
      );
      emit(state.copyWith(isLoading: false));
      if (success) {
        storage.setEmail(state.email);
        emit(state.copyWith(action: NavigationAction(routeName: NavigationRouter.name)));
      } else {
        emit(state.copyWith(action: ShowSnackBar(error!.errorMessage ?? 'Error')));
      }
    }
  }

  FutureOr<void> _emailChanged(EmailChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      email: event.email,
      buttonEnabled: state.password.isNotEmpty && event.email.isNotEmpty,
    ));
  }

  FutureOr<void> _passwordChanged(PasswordChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      password: event.password,
      buttonEnabled: event.password.isNotEmpty && state.email.isNotEmpty,
    ));
  }
}
