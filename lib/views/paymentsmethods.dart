

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/views/confirmorder.dart';
import 'package:hotels/views/thankyou.dart';

class Paymentmethods extends StatefulWidget {
  const Paymentmethods({ Key? key }) : super(key: key);

  @override
  State<Paymentmethods> createState() => _PaymentmethodsState();
}

class _PaymentmethodsState extends State<Paymentmethods> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
       Row(children: [
    
       Icon(Icons.arrow_back_ios_new) , 
          SizedBox(width: 10,),
       Text("Payment methods",style: TextStyle(fontSize: 24),),
       SizedBox(width: 67,),
    
       IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.blue,),  ),
    
       ],),
    
    Row(children: [
       Image.asset("assets/Mtn.png",height: 42,width: 71,fit: BoxFit.fill,),
          SizedBox(width: 11,),
          Image.asset("assets/MoovMoney.png",height: 42,width: 71,fit: BoxFit.fill,),
             SizedBox(width: 11,),
           Image.asset("assets/Visa.png",height: 42,width: 71,fit: BoxFit.fill,),
              SizedBox(width: 11,),
            Image.asset("assets/OrangeMoney.png",height: 42,width: 71,fit: BoxFit.fill,),


    ],),

      Padding(
          padding: const EdgeInsets.only(top:50,left: 15,right: 15),
          child: Container(   width: 1.sw,height: .4.sh,
          
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

                         SizedBox(height: 20,
                           child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: '0085  7789   2236   3685',
    labelText: '0085  7789   2236   3685',
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

                         SizedBox( height: 20,
                           child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: 'John smith',
    labelText: 'John smith',
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
  
  SizedBox(
    width: 100,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
         Text("Expiry date",style: TextStyle(color: Colors.white70,fontSize: 20),),
         SizedBox( width: 160,height: 30,
           child: TextFormField(
    decoration: const InputDecoration(
     // icon: Icon(Icons.person),
     hintText: '06/22',
      labelText: '06/22',
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
  ),
  SizedBox(width:50,),
  Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
            Text("CVV",style: TextStyle(color: Colors.white70,fontSize: 20),),
            SizedBox( width: 120,height: 30,
              child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: '321',
    labelText: '321',
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
SizedBox(height: 50,),
Button(text2:'Finish Order' , color2: Colors.white, ijkl: (){Get.to(Thankyou());}),

    
          ],),
        ),
        
      ),
    );
  }
}