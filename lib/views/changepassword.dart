





import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/views/myprofile.dart';

import '../const/custom.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({ Key? key }) : super(key: key);

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  @override
  Widget build(BuildContext context) {
   var _dropDownValue;
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.white,
      title: Text("Change  Password",style: TextStyle(color: Colors.black),),
      leading: GestureDetector(onTap: (){Get.to(Myprofile());},
        child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)) ,
      elevation: 0,


     ),
     body:SingleChildScrollView(
       child:Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         //  Text('y'),

     
       //Text("Full Name"),
      TextFormField(
  decoration: const InputDecoration(
  //  icon: Icon(Icons.person),
    hintText: 'Old Password',
  //  labelText: 'John Smith ',
    prefixIcon: Icon(Icons.lock_outline,color: Colors.blue,),
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
         
      TextFormField(
  decoration: const InputDecoration(
  //  icon: Icon(Icons.person),
    hintText: 'Create New Password',
   // labelText: 'johnsmith@gmail.com',
   prefixIcon: Icon(Icons.lock_outline,color: Colors.blue,),
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
              TextFormField(
  decoration: const InputDecoration(
  //  icon: Icon(Icons.person),
    hintText: 'Create New Password',
   // labelText: 'johnsmith@gmail.com',
   prefixIcon: Icon(Icons.lock_outline,color: Colors.blue,),
  ),
  // onSaved: (String? value) {
  //   // This optional block of code can be used to run
  //   // code when the user saves the form.
  // },
  // validator: (String? value) {
  //   return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  // },
),
    
SizedBox(height: 40,),
          Row(
            children: [
             Expanded(child: Button(text2: 'Update',  ijkl: (){}, color2: Colors.white,))
               
            ],
          ),


         ],
       ),
     ),
   );
  }
}