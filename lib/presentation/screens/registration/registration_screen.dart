import 'package:auto_route/auto_route.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/domain/enums/registration_stage.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:diet_app/gen/assets.gen.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/screens/registration/bloc/registration_bloc.dart';
import 'package:diet_app/presentation/screens/registration/stages/select_calories_stage.dart';
import 'package:diet_app/presentation/widgets/bars/progress_bar.dart';
import 'package:diet_app/presentation/widgets/buttons/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'stages/enter_mail_stage.dart';
import 'stages/select_allergies_stage.dart';
import 'stages/select_diet_stage.dart';

class RegistrationScreen extends StatefulWidget implements AutoRouteWrapper {
  const RegistrationScreen({this.user, super.key});

  final UserModel? user;

  @override
  Widget wrappedRoute(context) => BlocProvider(
        create: (context) => RegistrationBloc(user: user),
        child: this,
      );

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) => BlocConsumer<RegistrationBloc, RegistrationState>(
        listenWhen: (previous, current) => previous.action != current.action,
        buildWhen: (previous, current) => previous.stage != current.stage,
        listener: (context, state) {
          AppAction? action = state.action;
          if (action is ShowSnackBar) {
            _showSnackBar(context, action.title);
          } else if (action is NavigationAction) {
            if (action.routeName == NavigationRouter.name) {
              context.router.pushAndPopUntil(const NavigationRouter(), predicate : (_) => false);
            }
          }
        },
        builder: (context, state) {
          return PopScope(
            canPop: state.stage == RegistrationStage.values.first,
            onPopInvoked: (didPop) {
              if (!didPop) context.read<RegistrationBloc>().add(const RegistrationEvent.backClicked());
            },
            child: Scaffold(
              body: SafeArea(
                child: _buildBody(state.stage),
              ),
            ),
          );
        },
      );

  Widget _buildBody(RegistrationStage stage) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Stack(
          children: [
            SingleChildScrollView(child: _buildStage(stage)),
            _buildAppBar(stage),
            Align(alignment: Alignment.bottomCenter, child: _buildContinueButton()),
          ],
        ),
      );

  Widget _buildAppBar(RegistrationStage stage) => Container(
        color: AppColors.background,
        padding: const EdgeInsets.only(left: 18, top: 10, right: 24),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                context.router.pop();
              },
              child: SvgPicture.asset(Assets.icons.arrowLeft),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: ProgressBar(
                step: stage.index,
                length: RegistrationStage.values.length,
              ),
            )
          ],
        ),
      );

  Widget _buildStage(RegistrationStage stage) {
    switch (stage) {
      case RegistrationStage.selectAllergies:
        return const SelectAllergiesStage();
      case RegistrationStage.enterMail:
        return const EnterMailStage();
      case RegistrationStage.selectDiet:
        return const SelectDietStage();
      case RegistrationStage.selectCalories:
        return const SelectCaloriesStage();
    }
  }

  Widget _buildContinueButton() => BlocBuilder<RegistrationBloc, RegistrationState>(
        buildWhen: (previous, current) =>
            previous.continueButtonEnabled != current.continueButtonEnabled || previous.isLoading != current.isLoading,
        builder: (context, state) => AppButton(
          enabled: state.continueButtonEnabled,
          isLoading: state.isLoading,
          text: LocaleKeys.next.tr(),
          onPressed: () {
            context.read<RegistrationBloc>().add(const RegistrationEvent.onContinueClicked());
          },
        ),
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
