import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'nuovo_ordine.dart';


class Promozioni extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Promo();
}

class Promo extends State<Promozioni> {

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
                            leading: Icon(Icons.home,size: 4.3.h,color: Colors.black54,),
                            title: const Text('Home',style: TextStyle(fontSize: 16,color: Colors.black54,)),

                            onTap: (){

                              Navigator.pop(context);
                              Navigator.of(context).pop;
                            },

                          ),

                          SizedBox(height: 3.h,),

                          ListTile(

                            leading: Image.asset("assets/box.png",height: 4.5.h,color: Colors.black54,),
                            title: const Text('Nuovo Ordine',style: TextStyle(fontSize: 16,color: Colors.black54,)),

                            onTap: ()
                            {
                              Navigator.pop(context);

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NuovoOrdine()),
                              );
                            },

                          ),


                          SizedBox(height: 3.h,),


                          ListTile(
                            tileColor: Color.fromRGBO(231, 19, 31, 1),

                            leading: Image.asset("assets/megaphone.png",height: 4.5.h,color: Colors.white,),
                            title: const Text('Promozioni',style: TextStyle(fontSize: 16,color: Colors.white,)),
                            onTap: () {

                              Navigator.pop(context);

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

                        Text("Promozioni",style: TextStyle(fontSize: 25,color:  Color.fromRGBO(231, 19, 31, 1)),)

                      ],
                    ),

                  ))

              )  );

        });
  }
}