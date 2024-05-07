import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/domain/enums/diet_type.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/screens/registration/bloc/registration_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectDietStage extends StatelessWidget {
  const SelectDietStage({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 48),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              _buildDescription(),
              const SizedBox(height: 24),
              _buildDiets(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      );

  Widget _buildHeader() => Text(
        LocaleKeys.diets.tr(),
        style: AppTextStyles.title,
      );

  Widget _buildDiets() => Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List.generate(
          DietType.values.length,
          (index) => _buildDiet(DietType.values[index]),
        ),
      );

  Widget _buildDiet(DietType type) => BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.diets != current.diets,
      builder: (context, state) {
        bool selected = state.diets.contains(type);
        return GestureDetector(
          onTap: () {
            context.read<RegistrationBloc>().add(RegistrationEvent.onDietClicked(type));
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: AppColors.onBackground),
                color: selected ? AppColors.onBackground : AppColors.background),
            child: Text(
              type.title,
              style: AppTextStyles.description.copyWith(
                color: selected ? AppColors.background : AppColors.onBackground,
              ),
            ),
          ),
        );
      });

  Widget _buildDescription() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: const Text(
          LocaleKeys.dietsDescription,
          style: AppTextStyles.description,
        ).tr(),
      );
}
