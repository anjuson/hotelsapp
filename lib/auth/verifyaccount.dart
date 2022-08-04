

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hotels/homepage.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/signin.dart';
import 'package:hotels/auth/forgotpassword.dart';
import 'package:hotels/views/hotel.dart';
import 'package:hotels/views/menu.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


//import 'package:dropdown_formfield/dropdown_formfield.dart';

class Verifyaccount extends StatefulWidget {
  const Verifyaccount({ Key? key }) : super(key: key);

  @override
  State<Verifyaccount> createState() => _VerifyaccountState();
}

class _VerifyaccountState extends State<Verifyaccount> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
   var  currentText;
   var textEditingController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
    body:SingleChildScrollView(
  child: Stack(
  children: [
  Container(
    height: 1.sh,
    width: 1.sw,
    child: Gradientcolor(),
    ),

   Padding(
     padding: const EdgeInsets.only(left: 15,top:40,bottom: 19,right: 15),
     child: Text("Verify Account",style: TextStyle(fontSize: 25,color: Colors.white),),
   ),

Padding(
  padding: const EdgeInsets.only(top:90,left: 12,right: 12,bottom: 19),
  child:   Container(
    height: .80.sh,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
  
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child:  Padding(
        padding: const EdgeInsets.only(left: 12,right: 12,bottom: 19),
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
           Container(
             
             child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                SizedBox(height:20 ,),
  Text("Verify Mobile Number",style: TextStyle(fontSize: 20),),
     SizedBox(height:20 ,),

  Text("OTP has been sent to you on your mobile number, please enter it below",style: TextStyle(color: Color.fromARGB(220, 190, 190, 180)),),


  SizedBox(height: 30,),

  PinCodeTextField(
            length: 4,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              
              shape: PinCodeFieldShape.underline,
              // borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
            activeFillColor: Colors.white,
             selectedColor: Colors.blue,
             
            ),
            animationDuration: const Duration(milliseconds: 300),
         //   backgroundColor: Colors.blue.shade50,
           //  enableActiveFill: true,
            controller: textEditingController,
            onCompleted: (v) {
              debugPrint("Completed");
            },
            onChanged: (value) {
              debugPrint(value);
              setState(() {
                currentText = value;
              });
            },
            beforeTextPaste: (text) {
              return true;
            },
            appContext: context,
          ),
           
               SizedBox(height:50 ,),
              Center(child: Text("Don’t received otp?",style: TextStyle(color: Color.fromARGB(220, 190, 190, 180)),)),
         SizedBox(height: 7.5,),
     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,         
         children: [
        SizedBox(width: 135,height: 43,
         child: ElevatedButton(onPressed:(){}, child:Text('Resend in 30s',style: TextStyle(fontSize: 14),),
         style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
    backgroundColor: MaterialStateProperty.all<Color>(deepgreen),
         
         ),
                            ),     
        
           ), SizedBox(width: 10,),
         SizedBox(width: 135,height: 43,
        child: ElevatedButton(onPressed:(){}, child:Text('Change number',style: TextStyle(fontSize: 14),),
        style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
         backgroundColor: MaterialStateProperty.all<Color>(deepblue),
         
        ), 
        ),  
      //
     //   child:Custombutton( text1: 'Change number', Color1:Colors.white, btncolor: Colors.red, abcd: (){Get.to(Signin());}, ),       
                    ),
  ],),
  ],),
  ),

              ],
            ),
          ),
      ),
   ),
  
  ),
),
  ], ),
),
    );
  }
}