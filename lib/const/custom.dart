

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hotels/signin.dart';
import 'package:hotels/homepage.dart';

////-------------------custom colors------------------------////
Color  deepgreen= Color.fromRGBO(0, 255, 148, 1);
Color  deepblue=Color.fromRGBO(0, 0, 254, 1);
Color buttonblue=Color.fromRGBO(0, 144, 255, 1);
Color buttongreen=Color.fromRGBO(0, 255,148 ,1);
const borderCustom = Color(0xFFDBDBDB);
const greenDeepCustom = Color(0xFF1A7909);

////-------------------custom colors------------------------////

////----------------------custom gradient color page-------------------------////
class Custom extends StatelessWidget {   
  const Custom({
     Key? key ,   
     }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Container(decoration: BoxDecoration(
      gradient: LinearGradient(colors: [deepgreen,deepblue],begin:Alignment.topCenter ,end: Alignment.bottomCenter),
    ),
   // width: 1.sw,height: double.infinity,
    );
  }
}
  class Gradientcolor extends StatelessWidget {
    const Gradientcolor({ Key? key }) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Container(decoration: BoxDecoration(
      gradient: LinearGradient(colors: [deepgreen,deepblue],begin:Alignment.topCenter ,end: Alignment.bottomCenter)
    ),   
    );
    }
  }
  
      ////----------------------custom gradient color page-------------------------////

    //// ------------------- custom gradient color button ----------------------////      
class Button extends StatelessWidget {
  final String text2;
  final  Color color2;
  //final  Color btncolor2;
  final Function() ? ijkl;
  const Button({ Key? key,
  required this.text2,
  required this.color2,
  //required  this.btncolor2,
  required this.ijkl,
   }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [buttonblue,buttongreen],
	  begin: Alignment.centerLeft,
	  end: Alignment.centerRight,),
  borderRadius: BorderRadius.circular(15)
    ),
      child: SizedBox(width: 305,height: 43,
        child: ElevatedButton(onPressed:ijkl,
           child: Text(text2,style:TextStyle(fontSize: 18),),  
     style: ElevatedButton.styleFrom(
       primary:Colors.transparent ,
    //  onPrimary: ,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
            ),
            ),
),
      ),
      
    );
  }
}

  //// ------------------- custom gradient color button ----------------------////      
 



 ///------------------------- custombutton----------------------////
  class Custombutton extends StatelessWidget {
   final String text1;
   final Color Color1;
   final Color btncolor ;
   final Function()? abcd ;
   const Custombutton({
    Key? key ,
    required  this.text1,
     required  this.Color1,
      required  this.btncolor,
      required this.abcd, 
    }) : super(key: key);
      @override
      Widget build(BuildContext context) {
        return  Container(
          child: ElevatedButton(onPressed: abcd,
           child: Text(text1,style:TextStyle(fontSize: 18),),
     style: ElevatedButton.styleFrom(
              primary:btncolor, // background
                onPrimary:  Color1, // 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
    ),         
  ),
),
) ;
 }
}
 ///------------------------- custombutton----------------------////



///------------------------- Customtextbutton----------------------////
   class Customtextbutton extends StatelessWidget {
    final String text1;
   final Color Color1;
  // final Color btncolor ;
   final Function()? efgh ;
      const Customtextbutton({ 
         Key? key ,
         required  this.text1,
     required  this.Color1,
    //  required  this.btncolor,
      required this.efgh, 
         }) : super(key: key);
      @override
      Widget build(BuildContext context) {
        return  Container(
          child: TextButton(onPressed: efgh, child: Text(text1,style:TextStyle(fontSize: 18,color: Color1),),)
        ) ; 
      }
    }



    ///------------------------- Customtextbutton----------------------////
   
////////////////
//     Widget CustomtextButton({required Function()? onpressed , required Widget child})
//     {
// return TextButton(onPressed: onpressed, child: child);

//     }
////////////////////////
//    Widget CustomElevatedButton({required Function()? onpressed , required Widget ? child, required Widget? color })
//     {
// return ElevatedButton(onPressed: onpressed,
//          child: child,
//           // style: ElevatedButton.styleFrom(  
//           // shape: RoundedRectangleBorder(
//           //   borderRadius: BorderRadius.circular(15),
//           // ),
//           //        ),
//      style: ElevatedButton.styleFrom(
//             //primary: color, // background
//             //  onPrimary: Colors.white, // 
//           shape: RoundedRectangleBorder(

//             borderRadius: BorderRadius.circular(15),
//           ),
          
//                  ),
// );


//     }

var Placelist = [
  'ivorycoast.png',
  'senegal.png',
  'ville.png',
  'lago.png',
  'ivorycoast.png',
  'senegal.png',
  'ville.png',
  'lago.png',
];
var Placetext = [
  'Ivory Coast',
  'Senegal',
  'Ville',
  'lago',
  'Ivory Coast',
  'Senegal',
  'Ville'
  'lago',
];

var Hotellist =[
'hedengolf.png',
'onomo.png',
'adagio.png',
'sofilt.png',
'hedengolf.png',
'onomo.png',
'adagio.png',
'sofilt.png',];


var  Hoteltext =[
  'Hedengolf',
'Onomo',
'Adagio',
'Sofilt',
  'Hedengolf',
'Onomo',
'Adagio',
'Sofilt',];
