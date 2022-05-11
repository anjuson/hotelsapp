




import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/rendering.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hotels/homepage.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/signin.dart';
import 'package:hotels/auth/forgotpassword.dart';

bool _switchValue=true;

class Hotel extends StatefulWidget {
  const  Hotel({ Key? key,
  
   }) : super(key: key);

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {

 // String dropdownValue = 'Checkin date & time';

   String radioButtonItem = 'ONE';
   var  _dropDownValue ;
    int id = 1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       leading: Builder(
         builder: (context){
return IconButton(
           onPressed: ()=> Scaffold.of(context).openDrawer() ,           
           icon: Icon(Icons.filter),           
         );

         } ),
  //  backgroundColor: Colors.white,
     elevation: 0,
     title: Text("Find room",style: TextStyle(color: Colors.black),),
  //    actions:<Widget> [
  //      Row(children: [
  //                  Text("Stay",style: TextStyle(fontSize: 16,color: Colors.black),),
  //               Switch(
  //                activeColor: greenDeepCustom,
  //               activeTrackColor: borderCustom,
  //               value: _switchValue,
  //               onChanged: (value) {
  //               setState(() {
  //               _switchValue = value;
  //               });
  //               }),
  //  Text("Pass",style: TextStyle(fontSize: 16,color: Colors.black),),
  //                 Image.asset("assets/Union.png"),
  
  //      ],)

     

  //    ],
    
    ),
 endDrawer:  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
         
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
        body: SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10,top: 15),
            child: Column(children: [
              
                
                 DefaultTabController(
                length: 2,
                child: SizedBox(
                 width: 1.sw,
                height: 1.sh,
                 child: Column(
                children: [
                Container(
                  
                  
                color:Colors.white,
                 child: TabBar(
                   //indicatorSize: ,
                //   indicatorPadding: ,
                 labelColor: Colors.black,
                 indicator: BoxDecoration(
                   
                border: Border.all(color: Colors.blue, width: 1),
                 borderRadius: BorderRadius.circular(20.r),
                 color: Colors.blue),
                 tabs: [
                 Container(
              height: 40.h ,   
               width: 1.sw,
                 decoration: BoxDecoration( border: Border.all(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20)),
                                    // color: Colors.blue,
                ),
               child: Tab(
              text: "Hotels",
                ),
             ),
                 Container(
                 height: 40.h,
                 
                                  // color: blue,
                decoration: BoxDecoration( border: Border.all(color: Colors.blue, width: 1),
                borderRadius:  BorderRadius.only(topRight:Radius.circular(20),bottomRight: Radius.circular(20)),
                                    // color: Colors.blue,
                ),
                width: 1.sw,
                 child: Tab(
                text: "Villas",
                 ),
                 ),
                              
                 ],
                 ),
                ),
                    
                Flexible(
                  child: Container(
                   height: 1.sh,width: 1.sw,
                   child: TabBarView( 
                            //  physics: BouncingScrollPhysics(),
                             //  // dragStartBehavior:DragStartBehavior.,
                               children: <Widget>[
                   Center(
                               child: ListView(
                               children: [      
                   
                               
                               Container(
                                        
                               child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                   crossAxisAlignment:
                   CrossAxisAlignment.start,
                   children: [
                                            
                           SizedBox(height: 20,),

  SizedBox( height: 20,
                  child:   Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(  
                    
                      decoration: const InputDecoration(
                    
                        icon: Icon(Icons.location_on,color: Colors.blue,),
                    
                        hintText: '',
                    
                        labelText: 'Where do you want *',
                    
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

                         SizedBox(height: 20,),
                        DropdownButtonFormField(         
                        decoration: InputDecoration( prefixIcon: ImageIcon(        
                          AssetImage('assets/checkin.png'),      
                          color: Colors.blue,      
                         )
                         ),           
                        hint: _dropDownValue == null       
                         ? const Text('Checkin date & time')      
                         : Text(  
                          _dropDownValue, ), isExpanded: true,
                           icon: Icon(  Icons.keyboard_arrow_down_sharp,
                             color: Color.fromARGB(255, 33, 31, 30),
                            size: 25.sp,  ),
                            style: const TextStyle(color: Colors.black),
                              items: ['23 July 2019, 10:00AM',
                          '13 Feb',
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
                   
                            //   SizedBox(height: 40,),
                   
                   
                   
                    DropdownButtonFormField(         
                        decoration: InputDecoration( prefixIcon: ImageIcon(        
                          AssetImage('assets/checkout.png'),      
                          color: Colors.blue,      
                         )
                         ),           
                        hint: _dropDownValue == null       
                         ? const Text('Checkout date & time')      
                         : Text(  
                          _dropDownValue, ), isExpanded: true,
                           icon: Icon(  Icons.keyboard_arrow_down_sharp,
                             color: Color.fromARGB(255, 33, 31, 30),
                            size: 25.sp,  ),
                            style: const TextStyle(color: Colors.black),
                              items: ['23 July 2019, 10:00AM',
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
                               
                   DropdownButtonFormField(         
                        decoration: InputDecoration( prefixIcon: ImageIcon(        
                          AssetImage('assets/noofpersoncheckin.png'),      
                          color: Colors.blue,      
                         )
                         ),           
                        hint: _dropDownValue == null       
                         ? const Text('0 Adults.    0 Children.    0 room')      
                         : Text(  
                          _dropDownValue, ), isExpanded: true,
                           icon: Icon(  Icons.keyboard_arrow_down_sharp,
                             color: Color.fromARGB(255, 33, 31, 30),
                            size: 25.sp,  ),
                            style: const TextStyle(color: Colors.black),
                              items: ['23 July 2019, 10:00AM',
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
                   SizedBox(height: 10,),
                   
                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   
                   children: [
                   
                          Radio(
                             value: 1,
                             groupValue: id,
                             onChanged: (val) {
                               setState(() {
                    radioButtonItem = 'Fan';
                    id = 1;
                               });
                             },
                           ),
                           Text(
                             'Fan',
                             style: new TextStyle(fontSize: 17.0),
                           ),
                    
                           Radio(
                             value: 2,
                             groupValue: id,
                             onChanged: (val) {
                               setState(() {
                    radioButtonItem = 'Air conditioned';
                    id = 2;
                               });
                             },
                           ),
                           Text(
                             'Air conditioned',
                             style: new TextStyle(
                               fontSize: 17.0,
                             ),
                           ),
                   
                   
                   
                   ],),
                               Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                         
                    
                   
                             
                     
                            
                       
                             
                               ],),
                   
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Button(text2: 'Search',  ijkl: (){}, color2: Colors.white,)),
                        ],
                      ) ,
                   
                    SizedBox(height: 30,),
                   
                    Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text("Best Places",style: TextStyle(fontSize: 20),),
                    Text("View all",style: TextStyle(fontSize: 20),),
                   
                   
                    ],),
                   
                    SizedBox( height: 70,width: 1.sw,
                      child: ListView.separated(
                      
                         scrollDirection: Axis.horizontal,
                      
                        itemBuilder:(BuildContext context ,int  index){
                      
                          return  Row(
                          children: [
                            Container(
                              width:.25.sw,
                               height: 70,
                             
                       child: Column(
                         children: [
                         Card(
                           margin: EdgeInsets.only(top: 5,right: 5),
                         shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                         child:Container(
                   width:.25.sw,
                     height: 50,
                           child:Image.asset("assets/${Placelist[index]}",width: .25.sw,height: 50, fit: BoxFit.fill,),
                         
                         ),
                   
                           ),
                          //  SizedBox(height: 10,),
                           Text('${Placetext[index]}',style: TextStyle(fontSize: 13),),
                         ],
                       ),
                    ),
                         
                       
                        
                          ],
                          );
                          },
                      
                           separatorBuilder: (BuildContext context,int index){
                      
                             return Divider();},
                      
                              itemCount:7 ),
                    ),
                    
                   
                    SizedBox(height: 30,),
                   
                    Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text("Best Hotels",style: TextStyle(fontSize: 20),),
                    Text("View all",style: TextStyle(fontSize: 20),),
                   
                   
                    ],),
                   
                   
                     SizedBox( height: 70,width: 1.sw,
                      child: ListView.separated(
                      
                         scrollDirection: Axis.horizontal,
                      
                        itemBuilder:(BuildContext context ,int  index){
                      
                          return  Row(
                          children: [
                            Container(
                              width:.25.sw,
                               height: 70,
                             
                       child: Column(
                         children: [
                         Card(
                           margin: EdgeInsets.only(top: 5,right: 5),
                         shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                         child:Container(
                   width:.25.sw,
                     height: 50,
                           child:Image.asset("assets/${Hotellist[index]}",width: .25.sw,height: 50, fit: BoxFit.fill,),
                         
                         ),
                   
                           ),
                          //  SizedBox(height: 10,),
                           Text('${Hoteltext[index]}',style: TextStyle(fontSize: 13),),
                         ],
                       ),
                    ),
                         
                       
                        
                          ],
                          );
                          },
                      
                           separatorBuilder: (BuildContext context,int index){
                      
                             return Divider();},
                      
                              itemCount:7 ),
                    ),
                                        
                   ],
                               ),
                   ),
                   ),
                               
                                      
                               ],
                   ),
                   ),
                   Center(
                               child: ListView(
                               children: [      
                               Container(
                                        
                               child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                   crossAxisAlignment:
                   CrossAxisAlignment.start,
                   children: [
                                            
                               Text("danda  code"),
                                         
                                            
                   ],
                               ),
                   ),
                   ),
                               
                               
                               
                                      
                               ],
                   ),
                   ),
                               
                               ],
                               ),
                  ),
                ),
                ],
                ),
                )
                
                ),      
                
                ],),
          ),
        ),
        
      );
   
  }
}