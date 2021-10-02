import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobber/exports.dart';

void main() {
  runApp(Jobber());
}

class Jobber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobber',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      builder: (context, child) => MediaQuery(
        child: child,
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: MediaQuery.of(context).size.width <= 800 ? 0.8 : 1.9,
        ),
      ),
      theme: JobberTheme.lightThemeData.copyWith(
        platform: TargetPlatform.android,
      ),
      darkTheme: JobberTheme.darkThemeData.copyWith(
        platform: TargetPlatform.android,
      ),
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.black,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        child: Login(),
      ),
    );
  }
}
