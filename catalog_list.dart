import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/pages/home_detail_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_image.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
        final catalog = CatalogModel.items[index];
        return InkWell(
           onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> HomeDeatailPage(
                  catalog: catalog,
                  ),
              ) ,
           ),
        
          child: CatalogItem(catalog: catalog),
        );
      }  );
  
      }
    
  }




class CatalogItem extends StatelessWidget {
  const CatalogItem({
    Key? key,
    required this.catalog,
  })
   : assert(catalog!= null),
    super(key: key);
  final Item catalog;



  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [




          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
             image : catalog.image
            ),
          ),


          Expanded(


            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.color(context.theme.focusColor).lg.bold.make(),
              
                catalog.desc.text.textStyle(context.captionStyle).make(),
                 10.heightBox,


                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: Vx.mH8,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),




                    SizedBox(
                      width: 105,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            context.theme.splashColor,
                          ),
                          
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          )
                        ),
                    
                    
                       child: "Add to Cart".text.make(),
                       ),
                    )
                  ],
                ).pOnly(right: 8.0)
              ],
            ) 
          )
          ],
      )
    ).color(context.cardColor).rounded.square(150).make().py12();
  }
}
