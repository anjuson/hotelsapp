


import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:hotels/views/menu.dart';

import 'package:hotels/const/custom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Carbooking extends StatefulWidget {
  const Carbooking({ Key? key }) : super(key: key);

  @override
  State<Carbooking> createState() => _CarbookingState();
}

class _CarbookingState extends State<Carbooking> {

  var _dropDownValue ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text("Book a car",style: TextStyle(color: Colors.black),),

          actions: [
  Icon(Icons.more_vert,color: Colors.blue,),


          ],
        ),
        body: SingleChildScrollView(
          child: Column(
children: [
   SizedBox(height: 10,),
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
    //autovalidateMode: AutovalidateMode.always ,
    decoration:   InputDecoration(
        prefixIcon: Icon(Icons.location_pin,color: Colors.blue,),
       border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      
    ),
     // icon: Icon(Icons.person),
      hintText: 'Pickup Location',
    //  labelText: 'Name *',
    ), 
),
  ),

SizedBox(height: 10,),





Padding(
  padding: const EdgeInsets.all(10.0),
  child:   TextFormField(
  
    //autovalidateMode: AutovalidateMode.always ,
  
    decoration:   InputDecoration(
  
        prefixIcon: Icon(Icons.location_on,color: Colors.blue,),
  
       border: OutlineInputBorder(
  
        borderRadius: BorderRadius.circular(10),
  
      
  
    ),
  
     // icon: Icon(Icons.person),
  
      hintText: 'Dropoff Location',
  
    //  labelText: 'Name *',
  
    ), 
  
  ),
),

SizedBox(height: 10,),

Stack(
  children:   
      [  
        
        Container(height: .8.sh,
  
      child: 
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset("assets/map1.png",fit: BoxFit.fill,height: .5.sh ,width: 812,),
          ),
         
  
    ),

  Padding(
  
      padding: const EdgeInsets.only(left: 360,top: 0),
  
      child:   CircleAvatar(
    backgroundColor: Colors.green,
    radius: 30,
    child: Icon(Icons.check,),


      ),
  
  )
  

    ],
),

Padding(
  padding: const EdgeInsets.all(18.0),
  child:   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    children: [
  
  Column( crossAxisAlignment: CrossAxisAlignment.start,
  
    
  
    children: [
  
  
  
    Padding(
  
      padding: const EdgeInsets.only(left:1.0),
  
      child: Text("Select car type"),
  
    ),
  
  
  
                 
  
                     Container(
  
                       height:.30.sh,width: .4.sw,
  
                       child: DropdownButtonFormField(         
  
                            decoration: InputDecoration(
  
                           
  
                             ),           
  
                            hint: _dropDownValue == null       
  
                             ? const Text('Select car type')      
  
                             : Text(  
  
                              _dropDownValue, ), isExpanded: true,
  
                               icon: Icon(  Icons.keyboard_arrow_down_sharp,
  
                                 color: Color.fromARGB(255, 33, 31, 30),
  
                                size: 25.sp,  ),
  
                                style: const TextStyle(color: Colors.black),
  
                                  items: ['Select car type',
  
                              '28  August 2019 , 11:00AM',
  
                              '2 May',
  
                             '15 Feb',
  
                            '29 jun'
  
                            ].map((val) {
  
                             return DropdownMenuItem<String>( value: val, child: Text(val), );
  
                              },
  
                              ).toList(), onChanged: (val) {
  
                              setState( () {_dropDownValue = val;
  
                                },   );
  
                                   }),
  
                     ),
  
  
  
  
  
  ],),
  
  Column( crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
  
  
  
  Padding(
  
    padding: const EdgeInsets.only(left: 1),
  
    child:   Text("Select car type"),
  
  ),
  
  
  
                 
  
                     Container(
  
                       height:.30.sh,width: .4.sw,
  
                       child: DropdownButtonFormField(         
  
                            decoration: InputDecoration(
  
                           
  
                             ),           
  
                            hint: _dropDownValue == null       
  
                             ? const Text('Select car type')      
  
                             : Text(  
  
                              _dropDownValue, ), isExpanded: true,
  
                               icon: Icon(  Icons.keyboard_arrow_down_sharp,
  
                                 color: Color.fromARGB(255, 33, 31, 30),
  
                                size: 25.sp,  ),
  
                                style: const TextStyle(color: Colors.black),
  
                                  items: ['Select car type',
  
                              '28  August 2019 , 11:00AM',
  
                              '2 May',
  
                             '15 Feb',
  
                            '29 jun'
  
                            ].map((val) {
  
                             return DropdownMenuItem<String>( value: val, child: Text(val), );
  
                              },
  
                              ).toList(), onChanged: (val) {
  
                              setState( () {_dropDownValue = val;
  
                                },   );
  
                                   }),
  
                     ),
  
  
  
  
  
  ],),
  
  
  
  
  
  ],),
)



],       
 )
        ),
        
      ),
    );
  }
}