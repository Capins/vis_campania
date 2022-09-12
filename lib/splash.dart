import 'dart:async';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:vis_campania/accesso.dart';
import 'home.dart';


class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyApp();
}

class MyApp extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var dur = Duration(seconds: 3);
    return new Timer(dur,route);
  }

  route(){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
            (context) =>
                AccessoApp()
        )
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return startWidget();
  }

  Widget startWidget()
  {

    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
              title: "Vis Campania",
              home:Scaffold(
                resizeToAvoidBottomInset: false,

                body: Stack(
                    children:[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,

                        ),
                      ),
                      Center(
                          child:Container(
                              height: 11.5.h,
                              child:Image.asset("assets/logo_vis.png")
                          )
                      )
                    ]
                ),

              )  );

        });
  }
}