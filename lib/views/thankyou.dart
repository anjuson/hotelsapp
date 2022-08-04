

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Thankyou extends StatefulWidget {
  const Thankyou({ Key? key }) : super(key: key);

  @override
  State<Thankyou> createState() => _ThankyouState();
}

class _ThankyouState extends State<Thankyou> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Stack(children: [
          
           Image.asset("assets/thankyou.png",width: 1.sw,height: 1.sh,fit: BoxFit.fill,),
          
           Padding(
             padding: const EdgeInsets.only(top: 100),
             child: Center(child: Container(
               width: 1.sw,height: 1.sh,
               child: Column(children: [
      
                     Image.asset("assets/thankyouimg1.png",width: .30.sw,height: .2.sh,fit: BoxFit.fill,), 
       SizedBox(height: 10,),
                     Text("Thank You",style: TextStyle(fontSize: 50,color: Colors.white,),),
                     SizedBox(height: 20,),
      
                     Text("Your order is\n successful",style: TextStyle(fontSize: 30,color: Colors.white),),
      
      
               ],),
             ),),
           )
          
           ],
          
        ),
      ),
    );
  }
}