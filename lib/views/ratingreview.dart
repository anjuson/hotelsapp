

import 'package:flutter/material.dart';
import 'package:hotels/main.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:hotels/const/custom.dart';


class Ratingreview extends StatefulWidget {
  const Ratingreview({ Key? key }) : super(key: key);
  @override
  State<Ratingreview> createState() => _RatingreviewState();
}
class _RatingreviewState extends State<Ratingreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios,color: Colors.black,) ),
 automaticallyImplyLeading: false,
 title: Text("Rating & Reviews",style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0),
          child: Column(children: [
            // Row(children: [
            // IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios,color: Colors.black,) ),
            //  Text("Rating & Reviews",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      
      
            // ],),

            TextFormField(decoration: InputDecoration(
              labelText: "Search reviews",
              enabledBorder:OutlineInputBorder(
             
borderSide: BorderSide(width: 2,color: Color.fromARGB(97, 82, 79, 79)),
borderRadius: BorderRadius.circular(15),



            ),
           prefixIcon: Icon(Icons.search) ,
           suffixIcon: Icon(Icons.close),
              ),
            
            ),
      SizedBox(height: 14,),
 Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
   
   children: [
Text("Review Summary",style: TextStyle(fontSize: 14),),
Text("+ Write a review",style: TextStyle(fontSize: 14,color: Colors.blue),),
 ],),
 SizedBox(height: 14,),
  Container(
    height: 70,width:600,
    child: Image.asset("assets/5piediag.png",height: 40,width:500,fit: BoxFit.cover,),
    ),
    SizedBox(height: 14,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

      Column(
        children: [
          Text("Rooms"),
           Text("4.5"),
        ],
      ),
      Container(height: 25,width: 1,decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1)),),
     Column(
       children: [
         Text("Location"),
           Text("4.8"),
       ],
     ),
      Container(height: 25,width: 1,decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1)),),
     Column(
       children: [
         Text("Service"),
              Text("4.4"),
       ],
     ),
    ],),
       SizedBox(height: 14,),

 Row(children: [

   Text("4.4",style: TextStyle(fontSize: 42),),
   SizedBox(width: 23,),
   Column(children: [
Text("Very aGood"),
    Image.asset("assets/ratingstar1.png",fit: BoxFit.cover,height:30,width:100 ,),


   ],)
 ],),
     SizedBox(height: 10,),
    
SizedBox( height: 150,width: .90.sw,
  child:   ListView.separated(            
  
                         scrollDirection: Axis.vertical,                   
  
                        itemBuilder:(BuildContext context ,int  index){
                      
  
                          return  Row(
  
                          children: [
  
                            Container(  height: 100,width: .90.sw,
                              child: Card(
  
                                margin: EdgeInsets.only(top: 5,right: 5),
  
                              shape: RoundedRectangleBorder(
  
                              borderRadius: BorderRadius.circular(15.0),
  
                     ),
  
                              child:Column(
  
                                children: [
  
                                  Row(
  
                                    children: [
  
                                      Container(
                                        height: 50,width: 50,
                                        child: Image.asset("assets/${ratingreviewpic[index]}",width: .24.sw,height: 50, fit: BoxFit.fill,),
                                        ),
  
  
  
                  //  SizedBox(width: 30,),
  
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          
                                          
                                          children: [
  
                                            Text('${ratingreviewnames[index]}',style: TextStyle(fontSize: 13),),
  
                                        //  SizedBox(height: 50,),
  
                                              Text('${ratingreviewtiming[index]}',style: TextStyle(fontSize: 13),),
  
                                                     
  
                                                           
                                                           ],),
                                      ),
  
                                           //   SizedBox(width: 100,),
                   Padding(
                     padding: const EdgeInsets.only(left:100 ),
                     child: Text('${ratingreviewscore[index]}',style: TextStyle(fontSize: 13),),
                   ),         
                                    ],
  ),
   Row(children: [
   Text('${ratingreviewcomments[index]}',style: TextStyle(fontSize: 11,overflow: TextOverflow.ellipsis,),), 
    ],)
    ],
  
 ),
    ),
                            ),
      ],
    );
  },
    separatorBuilder: (BuildContext context,int index){
    return Divider();},
   itemCount:4 ),
),

     ],),
        ),
      ) ,
      
    );
  }
}