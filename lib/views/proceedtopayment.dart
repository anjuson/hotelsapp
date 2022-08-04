import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/views/cartbookingdetails.dart';

class Proceedtopayment extends StatefulWidget {
  const Proceedtopayment({ Key? key }) : super(key: key);

  @override
  State<Proceedtopayment> createState() => _ProceedtopaymentState();
}

class _ProceedtopaymentState extends State<Proceedtopayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading:false ,
      leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      title:Text("Add New card",style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.white,
      elevation: 0,),

      body: Column(children: [
                  Padding(
          padding: const EdgeInsets.only(top:50,left: 15,right: 15),
          child: Container(   width: 1.sw,height: .43.sh,
          
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
    colors: [buttonblue,buttongreen],
	  begin: Alignment.centerLeft,
	  end: Alignment.centerRight,),
          
          ),
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Image.asset('assets/simpic1.png',width:50,height: 30,),
                      Image.asset('assets/visa1.png',width:100,height: 30,),
                   ],
                 ),
               ),

 SizedBox(height: 10,),
                      Text("Card Number",style: TextStyle(color: Colors.white70,fontSize: 20),),
                      SizedBox(height: 10,),

                         SizedBox(height: 20,
                           child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: '0085  7789   2236   3685',
    hintStyle: TextStyle(color: Colors.white),
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
),
                         ),

SizedBox(height: 10,),
                      Text("Card Holder Name",style: TextStyle(color: Colors.white70,fontSize: 20),),
                      SizedBox(height: 10,),
                         SizedBox( height: 20,
                           child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: 'John smith',
     hintStyle: TextStyle(color: Colors.white),
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
),
                         ),
SizedBox(height: 10,),

Row(
 // mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
  
  Column(crossAxisAlignment: CrossAxisAlignment.start,
    
    children: [
       Text("Expiry date",style: TextStyle(color: Colors.white70,fontSize: 20),),
       SizedBox( width: 120,height: 30,
         child: TextFormField( 
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: '06/22',
   
    hintStyle: TextStyle(color:Colors.white ),
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  // validator: (String? value) {
  //   return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  // },
),
       ),



  ],),
  SizedBox(width:50,),
  Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
            Text("CVV",style: TextStyle(color: Colors.white70,fontSize: 20),),
            SizedBox( width: 120,height: 30,
              child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: '321',
    hintStyle: TextStyle(color: Colors.white)
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  // validator: (String? value) {
  //   return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  // },
),
            ),
  ],),
  
  
  ],

               
),




 
              ],),
            ),

          ),
        ),
    SizedBox( height: 20,),
Button(text2: 'ADD', color2: Colors.white, ijkl: (){Get.to(Cartbookingdetails());})

      ],),

      
      
    );
  }
}