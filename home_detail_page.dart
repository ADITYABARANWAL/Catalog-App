// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';

class HomeDeatailPage extends StatelessWidget {
  final Item catalog;
  const HomeDeatailPage({
    Key? key,
    required this.catalog,
  }) 
  : assert (catalog!= null),
  
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Vx.sky50,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: Vx.mH8,
                    children: [
                      "\$${catalog.price}".text.bold.xl4.red900.make(),
      
      
      
      
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            MyTheme.darkBluish,
                          ),
                          
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          )
                        ),
      
      
                       child: "Add to Cart".text.make(),
                       ).wh(120, 50)
                    ],
        ).p12(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
           Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(
              catalog.image
              )
              ).h32(context),

              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,

                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                       children: [
                         catalog.name.text.color(MyTheme.darkBluish).xl4.bold.make(),
              
                          catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                            10.heightBox,
                       ],
                    ).py64(),
                  ),
                ) 
              )
          ],
        ),
      ),
    );
  }
}
