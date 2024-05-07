import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';

part 'navigation_event.dart';

part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<NavigationState> emit) {
    emit(state.copyWith());
  }
}
