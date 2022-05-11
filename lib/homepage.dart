

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hotels/homepage.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/signin.dart';
//import 'package:dropdown_formfield/dropdown_formfield.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  
  // void _submit() {
  //   final isValid = _formKey.currentState.validate();
  //   if (!isValid) {
  //     return;
  //   }
  //   _formKey.currentState.save();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
    body:SingleChildScrollView(
  child: Stack(
  children: [
  Container(
    height: 1.40.sh,
    width: 1.sw,
    child: Gradientcolor(),
    ),

   Padding(
     padding: const EdgeInsets.only(left: 19,top: 105,bottom: 19,right: 21),
     child: Text("Sign Up",style: TextStyle(fontSize: 24,color: Colors.white),),
   ),

Padding(
  padding: const EdgeInsets.only(top: 150,left: 19,right: 19,bottom: 19),
  child:   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
  
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child:  Padding(
        padding: const EdgeInsets.only(left: 19,right: 19,bottom: 19),
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
          
                //styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),

                  TextFormField(
                  decoration: InputDecoration(labelText: 'Full Name',icon:Icon(Icons.person_outlined,color: Color.fromRGBO(0, 144, 255, 1),)),
                  keyboardType: TextInputType.text,
                  // onFieldSubmitted: (value) {
                  //   //Validator
                  // },
                  // validator: (value) {
                  //   if (value.isEmpty ||
                  //       !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  //           .hasMatch(value)) {
                  //     return 'Enter a valid email!';
                  //   }
                  //   return null;
                  // },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-Mail',icon: Icon(Icons.mail_outlined,color: Color.fromRGBO(0, 144, 255, 1),)),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    //Validator
                  },
                  // validator: (value) {
                  //   if (value.isEmpty ||
                  //       !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  //           .hasMatch(value)) {
                  //     return 'Enter a valid email!';
                  //   }
                  //   return null;
                  // },
                ),
                //box styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),

     TextFormField(
                  decoration: InputDecoration(labelText: 'Mobile Number',icon: Icon(Icons.phone_iphone,color: Color.fromRGBO(0, 144, 255, 1))),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Enter a valid password!';
                  //   }
                  //   return null;
                  // },
                ),
                     SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                //text input 
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password',icon: Icon(Icons.lock,color: Color.fromRGBO(0, 144, 255, 1))),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Enter a valid password!';
                  //   }
                  //   return null;
                  // },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                SizedBox(width: 305,height: 43,
                   child: Button( color2: Colors.white, text2: 'Create Account', ijkl: (){Get.to(Signin());},),
                 ),

             Container(child: Column(children: [

               SizedBox(height:100 ,),
              Text("or sign In using"),
         SizedBox(height: 7.5,),
     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         
         children: [

        SizedBox(width: 145,height: 43,
           
          child:Custombutton( text1: 'Facebook', Color1:Colors.white, btncolor: Color.fromRGBO(38, 106,209, 1), abcd: (){Get.to(Signin());}, ),
        
           ),
         SizedBox(width: 145,height: 43,
            child:Custombutton( text1: 'Google', Color1:Colors.white, btncolor: Colors.red, abcd: (){Get.to(Signin());}, ),
            
            
 
          ),



     ],),

     SizedBox(height: 17,),

Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
          Text("By creating an account, you are agree to our ",style: TextStyle(fontSize: 14),), 
          Text(" Terms",style: TextStyle(fontSize: 14,color:  deepgreen),),
  ],
),

   SizedBox(height: 50,),

Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
          Text("Already have an account?",style: TextStyle(fontSize: 19),), 

          Customtextbutton(text1:'Sign In', Color1: Colors.blue, efgh:  (){Get.to(Signin());},)

       //   CustomtextButton(child:  Text("Sign In",style: TextStyle(fontSize: 19,color: deepgreen ),), onpressed: () { Signin(); }),
          // GestureDetector(onTap: () {   Signin()    ;   },
          //   child: Text("Sign In",style: TextStyle(fontSize: 19,color: deepgreen ),),
          //   ),





//           Widget customElevatedButton({required Function()? onPressed,required Widget? child})
//           {
// return ElevatedButton(onPressed: onPressed, child: child);
// }
  ],
),
//Socialbutton(),
             ],),





             ),

              ],
            ),
          ),
      ),
  
      
  
  
  
  
  
  
  
    ),
  
    height: 796,
  
    width: 380,
  
    ),
),




  ],



  ),




    ),
    
    // Gradientcolor(),
      
    );
  }
}