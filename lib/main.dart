import 'package:diet_app/app/resources/app_styles.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EasyLocalization.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(AppStyles.darkStyle);

  Injector.init();
  runApp(EasyLocalization(
    supportedLocales: const [Locale('ru')],
    path: 'assets/l10n',
    fallbackLocale: const Locale('ru'),
    child: const App(),
  ));
}
