import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/views/addtocart.dart';



class Fooddetails extends StatefulWidget {
  const Fooddetails({ Key? key }) : super(key: key);

  @override
  State<Fooddetails> createState() => _FooddetailsState();
}

class _FooddetailsState extends State<Fooddetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Stack(children: [

Image.asset("assets/fooddetailsimage.png",height:250,width:1.sw,fit: BoxFit.fill,),

Padding(
  padding: const EdgeInsets.only(left: 17,top: 53),
  child:   Icon(Icons.arrow_back_ios,color: Colors.white,),
),


        ],),
        SizedBox(height: 20,),
       
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
         
               Text("Bagels with turkey and bacon",style: TextStyle(fontSize: 20),),
           SizedBox(height: 10,),
               Row(children: [
         
                 Icon(Icons.star_border_outlined,color: Colors.yellow,),
                 Text("3.9"),
         SizedBox(width:50),
         
                 Text("Reviews (200)"),
               ],),
                SizedBox(height: 10,),
            Text("A poppy seed bagel is spread with a mixture of cream\n cheese, parsley and pickles. Subsequently, a slice of\n crisp lettuce is added, with a slice of tomato, two half\n slices of turkey and two half slices of pastrami. To \ntop it off, this king feast takes only five minutes to\n complete and contains less than 400 calories.",style: TextStyle(fontSize: 14),),
          SizedBox(height: 30,),
           Text("Price : \$10",style: TextStyle(fontSize: 30),),
         
         
             ],),
           ),
         ),

            ElevatedButton(onPressed: (){Get.to(Addtocart());}, child:Text("Add to Bag")),

//BottomSheet(onClosing: (){}, builder: builder),

      ],),
      
    );
  }
}