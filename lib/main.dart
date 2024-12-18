import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sakuna_tracker/router/route_constants.dart';
import 'package:sakuna_tracker/router/router.dart' as router;
import 'package:sakuna_tracker/theme/theme.dart';
import 'package:sakuna_tracker/screens/error/error_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 常规设置
      debugShowCheckedModeBanner: false,
      title: 'Sakuna Tracker',
      // 主题设置
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      // 导航设置
      onGenerateRoute: router.generateRoute,
      initialRoute: entryPointScreenRoute,
      // 错误处理
      builder: (context, widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return ErrorScreen(
            errorMessage: 'An error occurred!',
            errorDetails: errorDetails.toString(),
          );
        };
        return widget ?? const SizedBox.shrink();
      },
      // i18n设置
      localizationsDelegates: const [
        // 本地化字符串
        GlobalMaterialLocalizations.delegate,
        // 本地化阅读布局
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'), // American English
        Locale('zh', 'CN'), // Chinese (Simplified)
      ],
      locale: const Locale('en', 'US'),
    );
  }
}
