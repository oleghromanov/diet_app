import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/domain/enums/allergy_type.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/screens/registration/bloc/registration_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectAllergiesStage extends StatelessWidget {
  const SelectAllergiesStage({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 48),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(),
            const SizedBox(height: 24),
            _buildDescription(),
            const SizedBox(height: 24),
            _buildAllergies(),
            const SizedBox(height: 32),
          ],
        ),
      );

  Widget _buildHeader() => Text(
        LocaleKeys.allergies.tr(),
        style: AppTextStyles.title,
      );

  Widget _buildAllergies() => Wrap(
      spacing: 12,
      runSpacing: 12,
      children: List.generate(AllergyType.values.length, (index) => _buildAllergy(AllergyType.values[index])));

  Widget _buildAllergy(AllergyType type) => BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (previous, current) => previous.allergies != current.allergies,
      builder: (context, state) {
        bool selected = state.allergies.contains(type);
        return GestureDetector(
          onTap: () {
            context.read<RegistrationBloc>().add(RegistrationEvent.onAllergyClicked(type));
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
              style:
                  AppTextStyles.description.copyWith(color: selected ? AppColors.background : AppColors.onBackground),
            ),
          ),
        );
      });

  Widget _buildDescription() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: const Text(
          LocaleKeys.allergiesDescription,
          style: AppTextStyles.description,
        ).tr(),
      );
}
