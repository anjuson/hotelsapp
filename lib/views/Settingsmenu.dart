
//import 'package:hotels/views/menu.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/views/notification.dart';
import 'package:hotels/views/privacypolicy.dart';
import 'package:hotels/views/terms&conditions.dart';

class Settingsmenu extends StatefulWidget {
  const Settingsmenu({ Key? key }) : super(key: key);

  @override
  State<Settingsmenu> createState() => _SettingsmenuState();
}

class _SettingsmenuState extends State<Settingsmenu> {
bool _switchValue=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    appBar: AppBar(title: Text("Settings",style: TextStyle(color: Colors.black),),
    
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.white,),
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Card(
                child: Container( width: .90.sw,height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                  padding: const EdgeInsets.only(left:10.0,top: 8),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications",style: TextStyle(color: Colors.black),),
                        Switch(
                     activeColor: greenDeepCustom,
                    activeTrackColor: borderCustom,
                    value: _switchValue,
                    onChanged: (value) {
                  //   setState(() {
                  //   _switchValue = value;
                  //  Get.to(Notification());
                  //   });
                  setState(() {
                   value = _switchValue;
                    Get.to(Notificationa());
                  });
                    }),
                    ],
                  ),
                ),
                ),
              ),
          
              Card(
                child: Container( width: .90.sw,height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                  padding: const EdgeInsets.only(left:10.0,top: 8),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Privacy Policy",style: TextStyle(color: Colors.black),),
                    GestureDetector(
                      onTap: () {
                        Get.to(Privacypolicy());
                      },
                      child: Icon(Icons.arrow_forward_ios,color: Colors.blue,))
                    ],
                  ),
                ),
                ),
              ),
               Card(
                 child: Container( width: .90.sw,height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                  padding: const EdgeInsets.only(left:10.0,top: 8),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Terms & conditions",style: TextStyle(color: Colors.black),),
                    GestureDetector(onTap: (){Get.to(Termsandconditions());},
                      
                      child: Icon(Icons.arrow_forward_ios,color: Colors.blue,)),
                    ],
                  ),
                           ),
                           ),
               ),
                 Card(
                   child: Container( width: .90.sw,height: 50,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                               child: Padding(
                               padding: const EdgeInsets.only(left:10.0,top: 8),
                               child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("About app",style: TextStyle(color: Colors.black),),
                    Icon(Icons.arrow_forward_ios,color: Colors.blue,)
                    ],
                               ),
                             ),
                             ),
                 ),
          
                 Card(
                   child: Container( width: .90.sw,height: 50,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                               child: Padding(
                               padding: const EdgeInsets.only(left:10.0,top: 8),
                               child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Help & Support ",style: TextStyle(color: Colors.black),),
                    Icon(Icons.arrow_forward_ios,color: Colors.blue,)
                    ],
                               ),
                             ),
                             ),
                 ),
                 Card(
                   child: Container( width: .90.sw,height: 50,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                               child: Padding(
                               padding: const EdgeInsets.only(left:10.0,top: 8),
                               child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rate the Mypass app",style: TextStyle(color: Colors.black),),
                    Icon(Icons.arrow_forward_ios,color: Colors.blue,)
                    ],
                               ),
                             ),
                             ),
                 ),
                 Card(
                   child: Container( width: .90.sw,height: 50,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                               child: Padding(
                               padding: const EdgeInsets.only(left:10.0,top: 8),
                               child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Faq?",style: TextStyle(color: Colors.black),),
                    Icon(Icons.arrow_forward_ios,color: Colors.blue,)
                    ],
                               ),
                             ),
                             ),
                 ),
                 Card(
                   child: Container( width: .90.sw,height: 50,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                               child: Padding(
                               padding: const EdgeInsets.only(left:10.0,top: 8),
                               child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Logout",style: TextStyle(color: Colors.black),),
                    Icon(Icons.arrow_forward_ios,color: Colors.blue,)
                    ],
                               ),
                             ),
                             ),
                 ),
          
          
          
          
          
            ],),
          ),
        ),
        
      ),
    );
  }
}