
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Notificationa extends StatefulWidget {
  const Notificationa({ Key? key }) : super(key: key);

  @override
  State<Notificationa> createState() => _NotificationaState();
}

class _NotificationaState extends State<Notificationa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications",style: TextStyle(color: Colors.black),),
         automaticallyImplyLeading: false,
         leading: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
         backgroundColor: Colors.white,
         elevation: 0,
      
      
      ),
      body: Column(children: [

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Card(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container( height: 50,width: 400,
    
      child: Column(children: [
    
     
    
     Row( mainAxisAlignment: MainAxisAlignment.end,
    
       children: [
    
         Text("20 july 2019"),
    
       ],
    
     ),
    
     Row( mainAxisAlignment: MainAxisAlignment.start,
    
       children: [
    
         Text("Your room booking in Heden golf \nhas been successful"),
    
       ],
    
     ),
    
       
    
    
    
    ],),
    
    ),
  ),
  
  ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Card(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container( height: 50,width: 400,
    
      child: Column(children: [
    
     
    
     Row( mainAxisAlignment: MainAxisAlignment.end,
    
       children: [
    
         Text("20 july 2019"),
    
       ],
    
     ),
    
     Row( mainAxisAlignment: MainAxisAlignment.start,
    
       children: [
    
         Text("Message from the app admin"),
    
       ],
    
     ),
    
       
    
    
    
    ],),
    
    ),
  ),
  
  ),
),


 ],),



      );
      
    
  }
}