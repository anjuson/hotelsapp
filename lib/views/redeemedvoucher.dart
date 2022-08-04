import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/views/confirmorder.dart';

import '../const/custom.dart';

class Redeemedvoucher extends StatefulWidget {
  const Redeemedvoucher({ Key? key }) : super(key: key);

  @override
  State<Redeemedvoucher> createState() => _RedeemedvoucherState();
}

class _RedeemedvoucherState extends State<Redeemedvoucher> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [

 Image.asset("assets/redeemedvoucher.png",height: 1.sh,width: 1.sw,fit: BoxFit.fill,),
 Padding(
   padding: const EdgeInsets.only(top: 100,left: 15,right: 15),
   child: Container(
     height: 1.sh,width: 1.sw,
     child: Center(
     child: Column(children: [

Text("REDEEMED VOUCHER",style: TextStyle(fontSize: 20,color: Colors.white),),
TextFormField(decoration: InputDecoration(labelText: 'If you have the voucher,please enter the code here',labelStyle: TextStyle(fontSize: 14,color: Colors.white)),),

SizedBox(height: 20,),
      Button(color2: Colors.white, ijkl: () { Get.to(Confirmorder()); }, text2: 'Redeem Voucher',),


     ],),
   ),),
 ),


        ],),
        
      ),
    );
  }
}