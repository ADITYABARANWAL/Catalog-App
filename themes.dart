import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme
{
  static ThemeData lightTheme(BuildContext context) =>  ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        splashColor: Color.fromARGB(255, 17, 9, 64),
        focusColor: const Color.fromARGB(255, 3, 40, 58),
        canvasColor: Vx.sky50,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black
          ), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6
        )
        );


        static ThemeData darkTheme(BuildContext context) =>  ThemeData(
          brightness: Brightness.dark,
        
          fontFamily: GoogleFonts.poppins().fontFamily,
          cardColor: Colors.black,
          canvasColor: darkCreamColor,
          splashColor: const Color.fromARGB(255, 9, 59, 82),
           focusColor: Colors.white,
          appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black
          ), toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6
        )
        
        
        );
        // colors
        static Color creamColor= Color(0x555f5f5f);
        static Color darkBluish = Color(0xff403b58);
        static Color darkCreamColor = Vx.gray900;
        static Color lightBluishColor = Vx.purple400;
}