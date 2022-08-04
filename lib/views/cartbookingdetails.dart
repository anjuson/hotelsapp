
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/views/hotel.dart';


class Cartbookingdetails extends StatefulWidget {
  const Cartbookingdetails({ Key? key }) : super(key: key);

  @override
  State<Cartbookingdetails> createState() => _CartbookingdetailsState();
}

class _CartbookingdetailsState extends State<Cartbookingdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
      leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text("Booking details",style: TextStyle(color: Colors.black),),
      
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
      
       Text("Room details",style: TextStyle(color: Colors.blue),),
      
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Checkin date & time"),
      Text("23 July 2019, 10:00 AM"),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Checkout date & time"),
      Text("23 July 2019, 10:00 AM"),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("No.of  Adults"),
      Text("2"),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("No.of  Children"),
      Text("2"),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("No.of  room"),
      Text("1"),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Price"),
      Text("\$125"),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Tax"),
      Text("\$20"),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Total"),
      Text("\$145",style: TextStyle(fontWeight: FontWeight.bold),),
      
      
      
       ],),
      
        Text("Food details",style: TextStyle(color: Colors.blue),),
      
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Bagels with turkey and bacon"),
      Text("\$10",style: TextStyle(fontWeight: FontWeight.bold),),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Sandwich"),
      Text("\$5",style: TextStyle(fontWeight: FontWeight.bold),),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Sub total",style: TextStyle(fontWeight: FontWeight.bold),),
      Text("\$15",style: TextStyle(fontWeight: FontWeight.bold),),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Service tax"),
      Text("\$2",style: TextStyle(fontWeight: FontWeight.bold),),
      
      
      
       ],),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      Text("Total",style: TextStyle(fontWeight: FontWeight.bold),),
      Text("\$17",style: TextStyle(fontWeight: FontWeight.bold),),
      
       
      
       ],),
      
       Row(mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Button(text2: 'Book again', color2:Colors.white, ijkl: (){Get.to(Hotel());}),
         ],
       ),
       
      
      
      
      
      
        ],),
      ),
      
    );
  }
}