import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/screens/registration/bloc/registration_bloc.dart';
import 'package:diet_app/presentation/widgets/inputs/app_input.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectCaloriesStage extends StatefulWidget {
  const SelectCaloriesStage({super.key});

  @override
  State<SelectCaloriesStage> createState() => _SelectCaloriesStageState();
}

class _SelectCaloriesStageState extends State<SelectCaloriesStage> {
  final TextEditingController _maxTextController = TextEditingController();
  final TextEditingController _minTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
            _buildCaloriesInputs(),
            const SizedBox(height: 32),
          ],
        ),
      );

  Widget _buildHeader() => Text(
        LocaleKeys.calories.tr(),
        style: AppTextStyles.header,
      );

  Widget _buildCaloriesInputs() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildText(LocaleKeys.min.tr()),
            const SizedBox(width: 12),
            Expanded(child: _buildMinInput()),
            const SizedBox(width: 24),
            _buildText(LocaleKeys.max.tr()),
            const SizedBox(width: 12),
            Expanded(child: _buildMaxInput()),
          ],
        ),
      );

  Widget _buildMinInput() => BlocBuilder<RegistrationBloc, RegistrationState>(
        buildWhen: (previous, current) => previous.calories != current.calories,
        builder: (context, state) => AppInput(
          controller: _minTextController..text = (state.calories.min ?? 0).toString(),
          maxLength: 4,
          keyboardType: TextInputType.number,
          onChanged: (text) {
            int? num = int.tryParse(text);
            context.read<RegistrationBloc>().add(RegistrationEvent.onMinCaloriesChanged(num));
          },
        ),
      );

  Widget _buildMaxInput() => BlocBuilder<RegistrationBloc, RegistrationState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) => AppInput(
          controller: _maxTextController..text = (state.calories.max ?? 0).toString(),
          maxLength: 4,
          keyboardType: TextInputType.number,
          onChanged: (text) {
            int? num = int.tryParse(text);
            context.read<RegistrationBloc>().add(RegistrationEvent.onMaxCaloriesChanged(num));
          },
        ),
      );

  Widget _buildDescription() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: const Text(
          LocaleKeys.caloriesDescription,
          style: AppTextStyles.description,
        ).tr(),
      );

  Widget _buildText(String text) => Text(
        "$text:",
        style: AppTextStyles.text,
      );
}
