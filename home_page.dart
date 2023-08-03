// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';
import 'package:flutter_application_1/widgets/themes.dart';
// / import 'package : flutter_application_1/widegets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final int a=20;

final String s= "code";

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
   final catalogJson =  await rootBundle.loadString("Assets/files/catalogue.json"); 
    final decodedData = jsonDecode(catalogJson);
     var productsData = decodedData["products"];
     CatalogModel.items= List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
        setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor ,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
         backgroundColor: MyTheme.darkBluish,
         child: Icon(CupertinoIcons.cart, color: Colors.white,),
      ),
      // appBar: AppBar(
      //   // backgroundColor: Colors.white,
      //   // elevation: 0.0,
      //   // iconTheme: IconThemeData(color: Colors.black),
      //   title: Text(
      //     "Catalogue's App",
      //     // style: TextStyle(color: Colors.black),
      //     ),
      // ),
      //   body: Padding(
      //      padding: const EdgeInsets.all(16.0),
      //   // ignore: unnecessary_null_comparison
      //   child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
      //       ? GridView.builder(


      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2,
      //             mainAxisSpacing: 16,
      //             crossAxisSpacing: 16,
      //           ),


      //           itemBuilder: (context, index) {
      //             final item = CatalogModel.items[index];
      //             return Card(
      //                 clipBehavior: Clip.antiAlias,
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(10)),


      //                 child: GridTile(
      //                   header: Container(
      //                     child: Text(
      //                       item.name,
      //                       style: TextStyle(color: Colors.white),
      //                     ),



      //                     padding: const EdgeInsets.all(12),
      //                     decoration: BoxDecoration(
      //                       color: Colors.deepPurple,
      //                     ),
      //                   ),
      //                   child: Image.network(
      //                     item.image,
      //                   ),


      //                   footer: Container(
      //                     child: Text(
      //                       item.price.toString(),
      //                       style: TextStyle(color: Colors.white),
      //                     ),
      //                     padding: const EdgeInsets.all(12),
      //                     decoration: BoxDecoration(
      //                       color: Colors.black,
      //                     ),
      //                   ),
      //                 ));
      //           },



      //           itemCount: CatalogModel.items.length,
      //         )
      //       : Center(
      //           child: CircularProgressIndicator(),
      //         ),
      // ),


      
      //   drawer: Mydrawer(),
      
       body: SafeArea(
         child: Container(
          padding: Vx.m24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CatalogHeader(),
             if(CatalogModel.items!= null && CatalogModel.items.isNotEmpty)
             CatalogList().py16().expand()
             else
             CircularProgressIndicator().centered().expand(),
            ],
          ),
         ),
       ),
      
      
      
      );
}
}

