import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/settings/viewmodel/setting_provider.dart';
import 'package:news/shared/app_bloc_observer.dart';
import 'package:news/shared/app_theme.dart';
import 'package:news/home/view/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main() {
  Bloc.observer = AppBlocObserver();
  runApp(ChangeNotifierProvider(
    create: (context) => SettingProvider(),
    child: NewsApp(),
  ));
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(Provider
          .of<SettingProvider>(context)
          .appLanguage),
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}


