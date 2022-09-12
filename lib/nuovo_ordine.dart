import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:vis_campania/promozioni.dart';


class NuovoOrdine extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => NewOrder();
}

class NewOrder extends State<NuovoOrdine> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  
  
  List b = ["Titolo1","Titolo2","Titolo3"];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return startWidget();
  }

  Widget startWidget()
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

                            },

                          ),

                          SizedBox(height: 3.h,),

                          ListTile(
                            tileColor: Color.fromRGBO(231, 19, 31, 1),

                            leading: Image.asset("assets/box.png",height: 4.5.h,color: Colors.white,),
                            title: const Text('Nuovo Ordine',style: TextStyle(fontSize: 16,color: Colors.white)),

                          ),


                          SizedBox(height: 3.h,),


                          ListTile(
                            leading: Image.asset("assets/megaphone.png",height: 4.5.h,color: Colors.black54,),
                            title: const Text('Promozioni',style: TextStyle(fontSize: 16,color: Colors.black54,)),
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

                  body: Column(children:[

                    SizedBox(height: 6.h,),

                  Padding(padding:EdgeInsets.only(left:30),child:
                  Align(alignment:Alignment.centerLeft,child:
                  Container(alignment: Alignment.centerLeft,width: width*0.37,decoration: BoxDecoration(border: Border.all()),

                        child:AutoSizeText("Nuovo Ordine",style: TextStyle(fontSize: 26),minFontSize: 6,maxFontSize: 30,maxLines: 1,)

                    ))),

                    SizedBox(height: 4.5.h,),

                    SingleChildScrollView(


                    child: Container(padding:EdgeInsets.only(left:20,right:20),height: 22.h,width: double.infinity,child: ListView.builder(
                        itemCount: b.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              leading: const Icon(CupertinoIcons.cube_box_fill),
                              title: Text("List item $index"));
                        })),

                  )])

              )  );

        });
  }
}