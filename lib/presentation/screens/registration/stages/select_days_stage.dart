import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/screens/registration/bloc/registration_bloc.dart';
import 'package:diet_app/presentation/widgets/inputs/app_input.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectDaysStage extends StatefulWidget {
  const SelectDaysStage({super.key});

  @override
  State<SelectDaysStage> createState() => _SelectDaysStageState();
}

class _SelectDaysStageState extends State<SelectDaysStage> {
  final TextEditingController _textController = TextEditingController();

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
        _buildDaysInput(),
        const SizedBox(height: 32),
      ],
    ),
  );

  Widget _buildHeader() => Text(
    LocaleKeys.countDays.tr(),
    style: AppTextStyles.title,
  );


  Widget _buildDaysInput() => BlocBuilder<RegistrationBloc, RegistrationState>(
    buildWhen: (previous, current) => previous.calories != current.calories,
    builder: (context, state) => SizedBox(
      width: 100,
      child: AppInput(
        textAlign: TextAlign.center,
        controller: _textController..text = (state.countDays).toString(),
        maxLength: 1,
        keyboardType: TextInputType.number,
        onChanged: (text) {
          int? num = int.tryParse(text);
          context.read<RegistrationBloc>().add(RegistrationEvent.onDaysChanged(num));
        },
      ),
    ),
  );


  Widget _buildDescription() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: const Text(
      LocaleKeys.countDaysDescription,
      style: AppTextStyles.description,
    ).tr(),
  );

  Widget _buildText(String text) => Text(
    "$text:",
    style: AppTextStyles.text,
  );
}