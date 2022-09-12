import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'nuovo_ordine.dart';
import 'promozioni.dart';


class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeApp();
}

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


class HomeApp extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

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
                  key: _scaffoldKey,


                appBar: AppBar(      iconTheme: IconThemeData(color: Colors.black54,size: 3.6.h),
                  toolbarHeight: 11.h,backgroundColor: Colors.white,title: Image.asset("assets/logo_vis.png",height: 7.5.h,),centerTitle: true,),



          drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
           DrawerHeader(

             child:Center(

               child:(Image.asset("assets/logo_vis.png",height: 8.5.h,))

             )

          ),

          SizedBox(height: 3.h,),

          ListTile(
            tileColor: Color.fromRGBO(231, 19, 31, 1),
            leading: Icon(Icons.home,size: 4.3.h,color: Colors.white,),
          title: const Text('Home',style: TextStyle(fontSize: 16,color: Colors.white)),
          ),

            SizedBox(height: 3.h,),

            ListTile(
              leading: Image.asset("assets/box.png",height: 4.5.h,color: Colors.black54,),
              title: const Text('Nuovo Ordine',style: TextStyle(fontSize: 16,color: Colors.black54,)),
              onTap: () {

                _scaffoldKey.currentState!.openEndDrawer();

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NuovoOrdine()),
                );

              },
            ),


            SizedBox(height: 3.h,),


            ListTile(
              leading: Image.asset("assets/megaphone.png",height: 4.5.h,color: Colors.black54,),
              title: const Text('Promozioni',style: TextStyle(fontSize: 16,color: Colors.black54,)),
              onTap: () {

                _scaffoldKey.currentState!.openEndDrawer();

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Promozioni()),
                );
              },
            ),
          ],
          )),



                body: Center(child:SingleChildScrollView(

                  child: Column(

                    children: [



                      Padding(padding:EdgeInsets.only(left:16,right:16),child:

                          GestureDetector(child:

                      Container(width: double.infinity,height:22.h,decoration: BoxDecoration(

                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(231, 19, 31, 1),
                            Color.fromRGBO(211, 5, 30, 0.9)
                          ],
                        ),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        color: Color.fromRGBO(231, 19, 31, 1),borderRadius: BorderRadius.all(Radius.circular(12))
                      ),child:Center(child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                        Image.asset("assets/box.png",height: 10.h,color: Colors.white,),
                          SizedBox(height: 2.h,),
                          AutoSizeText("NUOVO ORDINE",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),minFontSize: 6,maxFontSize: 30,)

                      ],))),

                          onTap: (){


                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NuovoOrdine()),
                            );


                          },
                          )),

                      SizedBox(height: 4.h,),

                      Padding(padding:EdgeInsets.only(left:16,right:16),child:


                          GestureDetector(child:

                      Container(width: double.infinity,height:22.h,decoration: BoxDecoration(

                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(231, 19, 31, 1),
                              Color.fromRGBO(211, 5, 30, 0.9)
                            ],
                          ),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          color: Color.fromRGBO(231, 19, 31, 1),borderRadius: BorderRadius.all(Radius.circular(12))
                      ),child:Center(child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Image.asset("assets/megaphone.png",height: 9.5.h,color: Colors.white,),
                          SizedBox(height: 2.h,),
                          AutoSizeText("PROMOZIONI",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),minFontSize: 6,maxFontSize: 30,)

                        ],))),

                          onTap: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Promozioni()),
                            );

                          },))

                    ],
                  ),

                ))

              )  );

        });
  }
}