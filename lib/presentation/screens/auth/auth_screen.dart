import 'package:auto_route/auto_route.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/gen/assets.gen.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/widgets/buttons/app_button.dart';
import 'package:diet_app/presentation/widgets/inputs/app_input.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/auth_bloc.dart';

class AuthScreen extends StatefulWidget implements AutoRouteWrapper {
  const AuthScreen({super.key});

  @override
  Widget wrappedRoute(context) => BlocProvider(
        create: (context) => AuthBloc(),
        child: this,
      );

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocConsumer<AuthBloc, AuthState>(
        buildWhen: (previous, current) => previous.isSignIn != current.isSignIn,
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          AppAction? action = state.action;
          if (action is ShowSnackBar) {
            _showSnackBar(context, action.title);
          } else if (action is NavigationAction) {
            if (action.routeName == NavigationRouter.name) {
              context.router.pushAndPopUntil(NavigationRouter(), predicate: (_) => false);
            }
          }
        },
        builder: (context, state) => Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHeader(state.isSignIn ? LocaleKeys.login.tr() : LocaleKeys.welcome.tr()),
              state.isSignIn ? _buildInputs() : _buildImage(),
              if (!state.isSignIn) _buildDescription(),
              _buildButtons(state.isSignIn),
            ],
          ),
        ),
      );

  Widget _buildHeader(String text) => Text(
        text,
        style: AppTextStyles.title,
      );

  Widget _buildInputs() => SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            _buildText(LocaleKeys.email.tr()),
            const SizedBox(height: 8),
            _buildEmailInput(),
            const SizedBox(height: 16),
            _buildText(LocaleKeys.password.tr()),
            const SizedBox(height: 8),
            _buildPassInput(),
          ],
        ),
      );

  Widget _buildText(String text) => Text(
        text,
        style: AppTextStyles.description,
      );

  Widget _buildEmailInput() => AppInput(
        hintText: LocaleKeys.emailHint.tr(),
        onChanged: (name) {
          context.read<AuthBloc>().add(AuthEvent.emailChanged(name));
        },
      );

  Widget _buildPassInput() => AppInput(
        hintText: LocaleKeys.passwordHint.tr(),
        onChanged: (name) {
          context.read<AuthBloc>().add(AuthEvent.passwordChanged(name));
        },
        obscureText: true,
      );

  Widget _buildImage() => Assets.images.welcome.image(
        height: 206,
        width: 243,
      );

  Widget _buildDescription() => const Text(
        LocaleKeys.authDescription,
        style: AppTextStyles.description,
      ).tr();

  Widget _buildButtons(bool isSignIn) => Column(
        children: [
          _buildSignInButton(),
          if (!isSignIn) const SizedBox(height: 32),
          if (!isSignIn) _buildRegisterButton(),
        ],
      );

  Widget _buildSignInButton() => BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) =>
            previous.buttonEnabled != current.buttonEnabled || previous.isLoading != current.isLoading,
        builder: (context, state) => AppButton(
          text: LocaleKeys.signIn.tr(),
          isLoading: state.isLoading,
          enabled: state.buttonEnabled,
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signInClicked());
          },
        ),
      );

  Widget _buildRegisterButton() => AppButton(
        text: LocaleKeys.registration.tr(),
        color: AppColors.surface,
        onPressed: () {
          context.router.pushNamed('registration');
        },
      );

  void _showSnackBar(context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, style: AppTextStyles.error),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: AppColors.surface,
      ),
    );
  }
}
