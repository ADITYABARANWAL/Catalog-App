// import 'dart:convert';

class CatalogModel
{
 static List<Item> items = <Item>[];
//  =[
//   Item(
//     id: 1,
//     name: "iPhone 12 Pro",
//     desc: "Apple iphone 12th generation",
//     price: 999,
//     color: "#33505a",
//     image: "https://img3.gadgetsnow.com/gd/images/products/additional/large/G390822_View_1/mobiles/smartphones/apple-iphone-14-pro-128-gb-gold-6-gb-ram-.jpg"
//   )

// ];
}





class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name,required this.desc,required this.price, required this.color, required this.image});

factory Item.fromMap(Map<String, dynamic> map){
   return Item(
    id: map["id"],
    name: map["name"],
     desc: map["desc"],
      price: map["price"],
       color: map["color"],
        image: map["image"]
        );
      }

     toMap() => {
      id:"id",
      name:"name",
      desc:"desc",
      price:"price",
      color:"color",
      image:"image",


     };
}