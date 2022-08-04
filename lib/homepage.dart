


import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:hotels/const/custom.dart';
import 'package:hotels/signin.dart';
//import 'package:dropdown_formfield/dropdown_formfield.dart';
class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  TextEditingController _namecontr=TextEditingController();
    TextEditingController _emailcontr=TextEditingController();
      TextEditingController _mobilecontr=TextEditingController();
        TextEditingController _passwordcontr=TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body:Stack(
       children: [
       SizedBox(
       height: 1.sh,
       width: 1.sw,
       child: Gradientcolor(),
       ),
      Padding(
        padding: const EdgeInsets.only(left: 19,top: 25,bottom: 19,right: 21),
        child: Text("Sign Up",style: TextStyle(fontSize: 24,color: Colors.white),),
      ),
    Padding(
       padding: const EdgeInsets.only(top: 70,left: 19,right: 19,bottom: 19),
       child:   Container( height: .85.sh,
       
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
       child: Card(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
         child:  Padding(
        padding: const EdgeInsets.only(left: 19,right: 19,bottom: 19),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
               key: _formKey,
              child: Column(
              children: <Widget>[
               //  SizedBox(
               //    height: MediaQuery.of(context).size.width * 0.1,
               //    ),
               TextFormField(
                 validator: (value) {
                   if(value!.isEmpty)
                   {
                     return 'please  enter   name';
                   }
                 },
               decoration: InputDecoration(labelText: 'Full Name',icon:Icon(Icons.person_outlined,color: Color.fromRGBO(0, 144, 255, 1),)),
               keyboardType: TextInputType.text,
               controller:  _namecontr,
               ),
                TextFormField(
                  validator: (e) {
                   if(e!.isEmpty) 
                   {
            
                     return'please  enter  email address';
                   }
                  },
                decoration: InputDecoration(labelText: 'E-Mail',icon: Icon(Icons.mail_outlined,color: Color.fromRGBO(0, 144, 255, 1),)),
               keyboardType: TextInputType.emailAddress,
               controller:  _emailcontr,
            //   onFieldSubmitted: (value) {   },
              ),
               //  SizedBox(
               //  height: MediaQuery.of(context).size.width * 0.02,
               //  ),
              TextFormField(
               decoration: InputDecoration(labelText: 'Mobile Number',icon: Icon(Icons.phone_iphone,color: Color.fromRGBO(0, 144, 255, 1))),
               
              keyboardType: TextInputType.phone,
               controller:  _mobilecontr,
               validator: (value){
            if(value!.isEmpty)
            {
          //  print('please  enter  Mobile Number');
            return 'please  enter  Mobile Number';
            
            }else if(  value.length<10 || value.length>10)
            {
               return'mobile no  should   be  10 digits';
            }
            
               },
             //   onFieldSubmitted: (value) {},
               
                  ),
               //   SizedBox(
               // height: MediaQuery.of(context).size.width * 0.02,
               //  ),
               TextFormField(
               decoration: InputDecoration(labelText: 'Password',icon: Icon(Icons.lock,color: Color.fromRGBO(0, 144, 255, 1))),
            //  keyboardType: TextInputType.emailAddress,
               //  onFieldSubmitted: (value) {},
               controller:  _passwordcontr,
               validator: (value){
               if(value!.isEmpty)
               {
           // print('please  enter valid  password');
            return 'please  enter valid  password';
               }else if(value.length<5){
           return'password  shoud  be  5  ch';
            
            
               }
            
            
               },
            
              obscureText: true,
                      ),
              SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
              ),
              SizedBox(width: 305,height: 43,
               child: Button( color2: Colors.white, text2: 'Create Account',
          ijkl: (){
            if(_formKey.currentState!.validate())
            {
             Get.to(Signin());
          //  print('name-${_namecontr.text}');
            }     
            
            },),
              ),
               
             ],
                     ),
                   ),
            
                        Container( 
                child: Column(children: [
              SizedBox(height:30 ,),
               Text("or sign In using"),
               SizedBox(height: 7.5,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            SizedBox(width: 125,height: 43,
                     child:Custombutton( text1: 'Facebook', Color1:Colors.white, btncolor: Color.fromRGBO(38, 106,209, 1), abcd: (){Get.to(Signin());}, ),
                   ),
                   SizedBox(width:10,),
              SizedBox(width: 125,height: 43,
              child:Custombutton( text1: 'Google', Color1:Colors.white, btncolor: Colors.red, abcd: (){Get.to(Signin());}, ),
               ),
             ],),
             SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text("By creating an account, you are agree to our ",style: TextStyle(fontSize: 12),), 
                   Text(" Terms",style: TextStyle(fontSize: 12,color:  deepgreen),),
               ],
            ),
             SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text("Already have an account?",style: TextStyle(fontSize: 15),), 
             Customtextbutton(text1:'Sign In', Color1: Colors.blue, efgh:  (){Get.to(Signin());},)
                   ],
            ),
            ],),
             ),
            ],
          ),
        ),
         ),
       ),
       //   height: 896,
       //  width: 380,
       ),
    ),
       ],
       ),
      ),
    );
  }
}