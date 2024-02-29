import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/auth_bloc.dart';

class AuthScreen extends StatelessWidget implements AutoRouteWrapper {
  const AuthScreen({super.key});

  @override
  Widget wrappedRoute(context) => BlocProvider(
    create: (context) => AuthBloc(),
    child: this,
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: _buildBody(context),
    ),
  );

  Widget _buildBody(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      ],
    ),
  );
}