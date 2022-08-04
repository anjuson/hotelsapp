import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hotels/const/custom.dart';
import 'package:hotels/homepage.dart';
import 'package:hotels/signin.dart';

import 'package:hotels/auth/verifyaccount.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({ Key? key }) : super(key: key);

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {

   var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   
    body:SingleChildScrollView(
  child: Stack(
  children: [
  Container(
    height: 1.sh,
    width: 1.sw,
    child: Gradientcolor(),
    ),

   Padding(
     padding: const EdgeInsets.only(left: 19,top: 55,bottom: 19,right: 21),
     child: Text("Forgot Password?",style: TextStyle(fontSize: 24,color: Colors.white),),
   ),

Padding(
  padding: const EdgeInsets.only(top: 100,left: 19,right: 19,bottom: 19),
  child:   Container(
     width: 380,height: .8.sh,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
  
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child:  Padding(
        padding: const EdgeInsets.only(left: 19,right: 19,bottom: 19),
        child: Form(
            key: _formKey,
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                   SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),

                Text("Please  enter your registered email \naddress to recover your password"),
          
                //styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                
          
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-Mail',icon: Icon(Icons.mail_outlined,color: Color.fromRGBO(0, 144, 255, 1),)),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    //Validator
                  },
                
                ),
                //box styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),

    
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),          
                
             

                SizedBox(width: 305,height: 43,
                   child: Button(text2: 'Submit', color2: Colors.white, ijkl: (){Get.to(Verifyaccount());},),
                 ),

              ],
            ),
          ),
      ),
  
  
    ),
  
   // height: 796,
  
   
  
    ),
),
  ],

  ),

    ),
          
    );
  }
}