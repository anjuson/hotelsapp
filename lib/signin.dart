



import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hotels/homepage.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/signin.dart';
import 'package:hotels/auth/forgotpassword.dart';
import 'package:hotels/views/hotel.dart';
import 'package:hotels/views/menu.dart';

//import 'package:dropdown_formfield/dropdown_formfield.dart';

class Signin extends StatefulWidget {
  const Signin({ Key? key }) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
    height: 1.sh,
    width: 1.sw,
    child: Gradientcolor(),
    ),

   Padding(
     padding: const EdgeInsets.only(left: 19,top:40,bottom: 19,right: 21),
     child: Text("Sign In",style: TextStyle(fontSize: 20,color: Colors.white),),
   ),

Padding(
  padding: const EdgeInsets.only(top:90,left: 12,right: 12,bottom: 19),
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
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.08,
                // ),

          
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-Mail',icon: Icon(Icons.mail_outlined,color: Color.fromRGBO(0, 144, 255, 1),)),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    //Validator
                  },
                
                ),
                //box styling
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.05,
                // ),

                TextFormField(
                  decoration: InputDecoration(labelText: 'Password',icon: Icon(Icons.lock,color: Color.fromRGBO(0, 144, 255, 1))),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
               
                ),
                         
                         SizedBox(height: 10),
                   Customtextbutton(Color1: Colors.red, efgh: () { Get.to(Forgotpassword()); }, text1: 'Forgot Password?',),
                  SizedBox(height: 10),

                SizedBox(width: 305,height: 43,
                   child: Button(text2: 'Sign In', color2: Colors.white, ijkl: (){Get.to(Menu());},),
                 ),

             Container(child: Column(children: [

               SizedBox(height:50 ,),
              Text("or sign In using"),
         SizedBox(height: 7.5,),
     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         
         children: [

        SizedBox(width: 125,height: 43,
           
          child:Custombutton( text1: 'Facebook', Color1:Colors.white, btncolor: Color.fromRGBO(38, 106,209, 1), abcd: (){Get.to(Signin());}, ),
        
           ), SizedBox(width: 20,),
         SizedBox(width: 125,height: 43,
            child:Custombutton( text1: 'Google', Color1:Colors.white, btncolor: Colors.red, abcd: (){Get.to(Signin());}, ),
            
            
 
          ),



     ],),

     SizedBox(height: 17,),

Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
          Text("By creating an account, you are agree to our ",style: TextStyle(fontSize: 12),), 
          Text(" Terms",style: TextStyle(fontSize: 14,color:  deepgreen),),
  ],
),

   SizedBox(height: 30,),

Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
          Text("Don’t have an account?",style: TextStyle(fontSize: 15),), 

          Customtextbutton(text1:'Sign Up', Color1: Colors.blue, efgh:  (){Get.to(Homepage());},)

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
  
    // height: 796,
  
    // width: 380,
  
    ),
),




  ],



  ),




    ),
    
    // Gradientcolor(),
      
    );
  }
}