import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/data/repositories/auth_repository.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/domain/enums/registration_stage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.dart';

part 'registration_event.dart';

part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationState()) {
    on<Init>(_init);
    on<OnContinueClicked>(_onContinueClicked);
    on<BackClicked>(_backClicked);
    on<EmailChanged>(_emailChanged);
    on<NameChanged>(_nameChanged);
    on<PasswordChanged>(_passwordChanged);
  }

  AuthRepository authRepository = Injector.instance();

  FutureOr<void> _init(Init event, Emitter<RegistrationState> emit) async {

  }

  FutureOr<void> _onContinueClicked(OnContinueClicked event, Emitter<RegistrationState> emit) async {
    emit(state.copyWith(continueButtonEnabled: false));
    if (state.stage == RegistrationStage.enterMail) {
      bool emailValid =
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(state.email);
      if (!emailValid) {
        emit(state.copyWith(emailValidationError: true));
        return;
      }
      emit(state.copyWith(isLoading: true));
      bool success = false;
      AppError? error;
      final result = await authRepository.registerUser(email: state.email, password: state.password);
      result.fold(
        (data) => success = data,
        (e) => error = e,
      );
      emit(state.copyWith(isLoading: false));
      if (success) {
        emit(state.copyWith(stage: RegistrationStage.values[state.stage.index + 1]));
      } else {
        emit(state.copyWith(action: ShowSnackBar(error!.errorMessage ?? 'Error')));
      }
    } else {
      emit(state.copyWith(stage: RegistrationStage.values[state.stage.index + 1]));
    }
  }

  FutureOr<void> _backClicked(BackClicked event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(stage: RegistrationStage.values[state.stage.index - 1]));
  }

  FutureOr<void> _emailChanged(EmailChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      emailValidationError: false,
      continueButtonEnabled: state.password.isNotEmpty && state.name.isNotEmpty && event.email.isNotEmpty,
    ));
    emit(state.copyWith(email: event.email));

  }

  FutureOr<void> _nameChanged(NameChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      name: event.name,
      continueButtonEnabled: state.password.isNotEmpty && event.name.isNotEmpty && state.email.isNotEmpty,
    ));
  }

  FutureOr<void> _passwordChanged(PasswordChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      password: event.password,
      continueButtonEnabled: event.password.isNotEmpty && state.name.isNotEmpty && state.email.isNotEmpty,
    ));
  }
}
