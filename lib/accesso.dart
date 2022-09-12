import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:vis_campania/home.dart';


class AccessoApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AppAccedi();
}

Map<int, Color> color =
{
  50:Color.fromRGBO(231, 19, 31, 1),
  100:Color.fromRGBO(231, 19, 31, 1),
  200:Color.fromRGBO(231, 19, 31, 1),
  300:Color.fromRGBO(231, 19, 31, 1),
  400:Color.fromRGBO(231, 19, 31, 1),
  500:Color.fromRGBO(231, 19, 31, 1),
  600:Color.fromRGBO(231, 19, 31, 1),
  700:Color.fromRGBO(231, 19, 31, 1),
  800:Color.fromRGBO(231, 19, 31, 1),
  900:Color.fromRGBO(231, 19, 31, 1)
};

MaterialColor colorCustom = MaterialColor(0xE7131FFF, color);

Color colore = Colors.white;

bool cliccato = false;


bool oscurato = true;


class AppAccedi extends State<AccessoApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {





    return startaccesso();
  }

  Widget startaccesso()
  {
    var padding = MediaQuery
        .of(context)
        .padding;
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double newheight = h - padding.top - padding.bottom;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(

              theme: ThemeData(
                colorScheme: ThemeData().colorScheme.copyWith(
                  secondary: Color.fromRGBO(231, 19, 31, 1),
                  primary: Color.fromRGBO(231, 19, 31, 1)
                ),
              ),

              title: "Vis Campania",
              home:Scaffold(

                resizeToAvoidBottomInset: false,

                appBar: AppBar(iconTheme: IconThemeData(color: Color.fromRGBO(231, 19, 31, 1),size: 4.h),title: Image.asset("assets/logo_vis.png",height: 7.5.h,), centerTitle: true,toolbarHeight: 11.h,backgroundColor: Colors.white,),


                body:Center(child:SingleChildScrollView(child:
                Column(
                    mainAxisAlignment:MainAxisAlignment.center,crossAxisAlignment:CrossAxisAlignment.center,

                    children: [


                      Text("Accedi",style: TextStyle(fontSize: 28),),
                      SizedBox(height:6.h),

                    Container(padding:EdgeInsets.only(left:45,right: 45),child:






                    TextField(decoration: InputDecoration(

                      prefixIcon: Icon(Icons.email_outlined),hintText: "Email",

                      focusColor: Color.fromRGBO(231, 19, 31, 1),
                      hoverColor: Color.fromRGBO(231, 19, 31, 1),

                    ),)


                    ),
                      SizedBox(height:4.h),
                      Container(padding:EdgeInsets.only(left:45,right: 45),child:
                      TextField(decoration: InputDecoration(suffixIcon:
                        GestureDetector(child: oscurato==true?Icon(CupertinoIcons.eye_fill):Icon(CupertinoIcons.eye_slash_fill),onTap: (){setState(() {
                          oscurato=!oscurato;
                        });},)
                        ,prefixIcon: Icon(Icons.lock_outline),hintText: "Password",),obscureText: oscurato,)),
                    SizedBox(height:9.h),


                  Container(padding:EdgeInsets.only(left: 65,right: 65),child:

                 /*   OutlinedButton(




                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 5.0, color: Colors.blue,),


                      ),



                      onPressed: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );},

                      child: Text("AVANTI"),
                    ),*/

                  Container(
                      width: double.infinity,
                      height:7.h,
                      child:

                      OutlinedButton(

                        onPressed: (){


                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );},


                         style: OutlinedButton.styleFrom(


                           primary: Colors.black,

                           backgroundColor: Colors.white,



                           side: BorderSide(color: Colors.black, width: 2.5),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),




                      /*     foregroundColor:



*/
                           ),






                          child: const Text("Avanti",style: TextStyle(fontSize: 22),),




                      ),




                            ))



                  ],))))

                );

        });
  }
}