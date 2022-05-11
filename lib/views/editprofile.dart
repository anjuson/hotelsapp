




import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/views/myprofile.dart';

import '../const/custom.dart';
import 'package:hotels/views/changepassword.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({ Key? key }) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
   var _dropDownValue;
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.white,
      title: Text("Edit profile",style: TextStyle(color: Colors.black),),
      leading: GestureDetector(onTap: (){Get.to(Myprofile());},
        child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)) ,
      elevation: 0,


     ),
     body:SingleChildScrollView(
       child:Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         //  Text('y'),

      Center(
        child: Stack(children: [
    CircleAvatar(radius: 60,
    backgroundColor: Colors.transparent,
       backgroundImage:     AssetImage("assets/editmyprofile.png",),
   
      child: Container(child:  Image.asset("assets/camera.png"),) ,
    
    
    ),

 //   Image.asset("assets/camera.png"),



        ],),
      ),
       Text("Full Name"),
      TextFormField(
  decoration: const InputDecoration(
  //  icon: Icon(Icons.person),
    hintText: 'John Smith',
  //  labelText: 'John Smith ',
    prefixIcon: Icon(Icons.person_outline),
  ),
  // onSaved: (String? value) {
  //   // This optional block of code can be used to run
  //   // code when the user saves the form.
  // },
  // validator: (String? value) {
  //   return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  // },
),
         SizedBox(height: 20,),
           Text("Email"),
      TextFormField(
  decoration: const InputDecoration(
  //  icon: Icon(Icons.person),
    hintText: 'johnsmith@gmail.com',
   // labelText: 'johnsmith@gmail.com',
    prefixIcon: Icon(Icons.email_outlined),
  ),
  // onSaved: (String? value) {
  //   // This optional block of code can be used to run
  //   // code when the user saves the form.
  // },
  // validator: (String? value) {
  //   return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  // },
),


                SizedBox(height: 20,),
           Text("Mobile number"),
      Row(
        children: [

            SizedBox( width: 180,
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: DropdownButtonFormField(         
                            decoration: InputDecoration( icon: Icon(Icons.phone_iphone,color: Colors.blue,),
                            //    prefixIcon: ImageIcon(  AssetImage('assets/mobil.png'),      
                            //   color: Colors.blue,      
                            //  ),
                             ),           
                            hint: _dropDownValue == null       
                             ? const Text('Isd codes')      
                             : Text(  
                              _dropDownValue, ), isExpanded: true,
                               icon: Icon(  Icons.keyboard_arrow_down_sharp,
                                 color: Color.fromARGB(255, 33, 31, 30),
                                size: 25.sp,  ),
                                style: const TextStyle(color: Colors.black),
                                  items: ['+225',
                              '+201',
                              '+301',
                             '+502',
                            '+405'
                            ].map((val) {
                             return DropdownMenuItem<String>( value: val, child: Text(val), );
                              },
                              ).toList(), onChanged: (val) {
                              setState( () {_dropDownValue = val;
                                },   );
                                   }),
              ),
            ),
                  SizedBox(
width: 2.w,
height: 20.h,
child: const ColoredBox(color: Colors.grey),
), 
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox( width: 200,
              child: TextFormField(
  decoration: const InputDecoration(
  //  icon: Icon(Icons.person),
    hintText: '698698966',
   // labelText: 'johnsmith@gmail.com',
  //  prefixIcon: Icon(Icons.phone_android),
  ),
  // onSaved: (String? value) {
  //   // This optional block of code can be used to run
  //   // code when the user saves the form.
  // },
  // validator: (String? value) {
  //   return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  // },
),
            ),
          ),
        ],
      ),
SizedBox(height: 40,),
          Row(
            children: [
             Expanded(child: Button(text2: 'Update',  ijkl: (){Get.to(Changepassword());}, color2: Colors.white,))
               
            ],
          ),


         ],
       ),
     ),
   );
  }
}