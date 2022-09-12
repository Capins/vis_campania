
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vis_campania/splash.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main()
{

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp0());
  configLoading();
}

int current_index = 1;


void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp0 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Vis Campania",
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        // DefaultCupertinoLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate, // Here !
        DefaultWidgetsLocalizations.delegate,
      ],
      locale: Locale('it'),
      supportedLocales: const [
        const Locale('it')
      ],


      debugShowCheckedModeBanner: false,
      home: Splash(), builder: EasyLoading.init(),
    );
  }
}



