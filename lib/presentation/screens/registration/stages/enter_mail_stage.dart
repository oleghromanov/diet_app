import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/screens/registration/bloc/registration_bloc.dart';
import 'package:diet_app/presentation/widgets/inputs/app_input.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterMailStage extends StatefulWidget {
  const EnterMailStage({super.key});

  @override
  State<EnterMailStage> createState() => _EnterMailStageState();
}

class _EnterMailStageState extends State<EnterMailStage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHeader(),
            const SizedBox(height: 24),
            _buildInputs(),
          ],
        ),
      );

  Widget _buildHeader() => Text(
        LocaleKeys.registration.tr(),
        style: AppTextStyles.title,
      );

  Widget _buildInputs() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            _buildText(LocaleKeys.name.tr()),
            const SizedBox(height: 8),
            _buildNameInput(),
            const SizedBox(height: 8),
            _buildText(LocaleKeys.email.tr()),
            const SizedBox(height: 8),
            _buildEmailInput(),
            _buildEmailError(),
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

  Widget _buildNameInput() => BlocBuilder<RegistrationBloc, RegistrationState>(
        buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state) => AppInput(
          controller: nameController..text = state.name,
          hintText: LocaleKeys.nameHint.tr(),
          onChanged: (name) {
            context.read<RegistrationBloc>().add(RegistrationEvent.nameChanged(name));
          },
        ),
      );

  Widget _buildEmailError() => BlocBuilder<RegistrationBloc, RegistrationState>(
        buildWhen: (previous, current) => previous.emailValidationError != current.emailValidationError,
        builder: (context, state) => state.emailValidationError
            ? Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  LocaleKeys.emailError.tr(),
                  style: AppTextStyles.error,
                ),
              )
            : const SizedBox(),
      );

  Widget _buildEmailInput() => BlocBuilder<RegistrationBloc, RegistrationState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) => AppInput(
          controller: emailController..text = state.email,
          hintText: LocaleKeys.emailHint.tr(),
          onChanged: (name) {
            context.read<RegistrationBloc>().add(RegistrationEvent.emailChanged(name));
          },
        ),
      );

  Widget _buildPassInput() => BlocBuilder<RegistrationBloc, RegistrationState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) => AppInput(
          controller: passwordController..text = state.password,
          hintText: LocaleKeys.passwordHint.tr(),
          onChanged: (name) {
            context.read<RegistrationBloc>().add(RegistrationEvent.passwordChanged(name));
          },
          obscureText: true,
        ),
      );
}
