import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/core/resources/theme/theme.dart';
import 'package:stock_ui/src/core/resources/theme/theme_files/app_bar_theme.dart';
import 'package:stock_ui/src/feature/home/ui/view/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // to set light / white App status & system Color
  SystemChrome.setSystemUIOverlayStyle(customSystemUiOverlayStyle);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
              DeviceType deviceType) =>
          MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightThemeData,
        home: const HomePage(),
      ),
    );
  }
}
