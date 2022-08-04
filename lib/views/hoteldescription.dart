


import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/const/custom.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/rendering.dart';
import 'package:hotels/views/confirmorder.dart';
import 'package:hotels/views/food.dart';
import 'package:hotels/views/ratingreview.dart';


class Hoteldescription extends StatefulWidget {
  const Hoteldescription({Key? key}) : super(key: key);

  @override
  State<Hoteldescription> createState() => _HoteldescriptionState();
}

class _HoteldescriptionState extends State<Hoteldescription> {
  String radioButtonItem = 'ONE';
  int id = 1;
  var _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: .4.sh,
                    width: 1.sw,
                    child: Image.asset(
                      "assets/hoteldescriptionreview.png",
                      height: .5.sh,
                      width: 1.sw,
                      fit: BoxFit.cover,
                    )),
                Padding( 
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      Text(
                        "Heden Golf",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Image.asset(
                        "assets/hedengolfsettings.png",
                        color: Colors.white,
                        height: 30,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190),
                  child: GestureDetector(onTap: (){Get.to(Ratingreview());},
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          "3.9",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 210),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        " 85/100 people liked this",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      Text(
                        "Abidjan, Côte d'Ivoire",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
        
  DefaultTabController(
                length: 3,
                child: SizedBox(
                  width: 1.sw,
                  height: .54.sh,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(width: 3, color: Colors.blue),
                          color: Colors.white,
                        ),
                        child: TabBar(
                          //indicatorSize: ,
                          //   indicatorPadding: ,
                          labelColor: Colors.black,
                          indicator: BoxDecoration(
                              border:
                                  Border.all(color: Colors.blue, width: 2),
                              //  borderRadius: BorderRadius.horizontal(left: Radius.circular(12.r)),
                              color: Colors.blue),
                          tabs: [
                            Container(
                              height: .05.sh,
                              width: 1.sw,
                              child: Tab(
                                text: "Review (106)",
                              ),
                            ),
                            Container(
                              height: .05.sh,
                              width: 1.sw,
                              child: Tab(
                                text: "Photo (10)",
                              ),
                            ),
                            Container(
                              height: .05.sh,
                              width: 1.sw,
                              child: Tab(
                                text: "Near by (24)",
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: .455.sh,
                       //   height: 200,
                        width: 1.sw,
                        child: TabBarView(
                        
                        
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                child: Column(
                                //  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hotel Description",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Center(
                                      child: Text(
                                       "Set in landscaped gardens overlooking the Ébrié lagoon, this\n upscale hotel featuring contemporary local art and architectural\n touches is 3 km from Mosquée de la riviéra and 17 km from\n Banco National Park.",
                                       style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                                       
                                    Container( decoration: BoxDecoration(color: Color.fromRGBO(224, 232, 237, 1)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                                Text(
                                        "Hotel Facilities",
                                        style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                      "assets/Free Wi-Fi.png",
                                                      color: Colors.blue,
                                                    ),
                                                    Text("Free Wi-Fi",style: TextStyle(fontSize: 10),),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                        "assets/fitnesscenter.png"),
                                                          Text("Fitness Center",style: TextStyle(fontSize: 10),),
                                                  ],
                                                ),
                                                    
                                                    
                                                Column(
                                                  children: [
                                                    Image.asset("assets/breakfast.png"),
                                                         Text("Free Breakfast",style: TextStyle(fontSize: 10),),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                        "assets/Kid Friendly.png"),
                                                            Text("Kid Friendly",style: TextStyle(fontSize: 10),),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          
                                          ],
                                        ),
                                      ),
                                    ),
                                   Container( height:100,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    "assets/locationicon1.png"),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text("Abidjan, Côte d'Ivoire"),
                                              ],
                                            ),
                                          ),
                                             Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/phoneicon.png"),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text("+225 22 48 26 26"),
                                        ],
                                      ),
                                    ),
                                      
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/checkin.png"),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text("Checkin 12 PM"),
                                          SizedBox(
                                            width: 60,
                                          ),
                                          Image.asset("assets/checkin.png"),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text("Checkout 11 AM"),
                                        ],
                                      ),
                                    ),
                                        ],
                                      ),
                                    ),
                                                    
                                        SizedBox(height: 20,),
                                                         
                                                         Row(children: [
                                 
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                                    
                                        Row(
                                          children: [
                                            Image.asset("assets/dining-table.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Great dining",style: TextStyle(fontSize: 12),),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            ],
                                        ),
                                           SizedBox(height: 10,)  ,       
                                        Row(
                                            children: [
                                              Image.asset(
                                                "assets/breakfast.png",
                                                height: 12,
                                                width: 12,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text("Great breakfast",style: TextStyle(fontSize: 12),),
                                                        
                                            ],
                                          ),
                                                    
                                 ],),
                                    
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                        Row(
                                          children: [                        
                                       Text("Pet friendly",style: TextStyle(fontSize: 12),),
                                                    
                                       ],
                                        ), 

                                          SizedBox(height: 10,)  ,       
                                        Row(
                                            children: [                        
                                            Image.asset(
                                                  "assets/swimming.png"),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text("Great pool",style: TextStyle(fontSize: 12),),
                                       ],
                                          ),                               
                                 ],),
                                                    
                                    SizedBox(width:10 ,),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                                    
                                  Row(
                                          children: [
                                                    
                                            Image.asset("assets/bed.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Great rooms",style: TextStyle(fontSize: 12),),
                                          ],
                                        ),

                                            SizedBox(height: 10,)  ,                
                                        Row(
                                            children: [
                                          Image.asset(
                                                  "assets/diamond.png"),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text("Luxurious vibe",style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                                    
                                   
                                 ],),
                                 
                                 
                                 ],),
                                          //////-----------//////////////////
                                 
                                                       
                                                    
                                    ///////------------//////////////
                                                         SizedBox(height: 20,),
                                    Text("CHECK  AVAILBILITY"),
                                    DropdownButtonFormField(
                                        decoration: InputDecoration(
                                            prefixIcon: ImageIcon(
                                          AssetImage('assets/checkout.png'),
                                          color: Colors.blue,
                                        )),
                                        hint: _dropDownValue == null
                                            ? const Text(
                                                'Checkin date & time')
                                            : Text(
                                                _dropDownValue,
                                              ),
                                        isExpanded: true,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          color:
                                              Color.fromARGB(255, 33, 31, 30),
                                          size: 25.sp,
                                        ),
                                        style: const TextStyle(
                                            color: Colors.black),
                                        items: [
                                          '23 July 2019, 10:00AM',
                                          '28  August 2019 , 11:00AM',
                                          '2 May',
                                          '15 Feb',
                                          '29 jun'
                                        ].map(
                                          (val) {
                                            return DropdownMenuItem<String>(
                                              value: val,
                                              child: Text(val),
                                            );
                                          },
                                        ).toList(),
                                        onChanged: (val) {
                                          setState(
                                            () {
                                              _dropDownValue = val;
                                            },
                                          );
                                        }),
                                    DropdownButtonFormField(
                                        decoration: InputDecoration(
                                            prefixIcon: ImageIcon(
                                          AssetImage('assets/checkout.png'),
                                          color: Colors.blue,
                                        )),
                                        hint: _dropDownValue == null
                                            ? const Text(
                                                'Checkout date & time')
                                            : Text(
                                                _dropDownValue,
                                              ),
                                        isExpanded: true,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          color:
                                              Color.fromARGB(255, 33, 31, 30),
                                          size: 25.sp,
                                        ),
                                        style: const TextStyle(
                                            color: Colors.black),
                                        items: [
                                          '23 July 2019, 10:00AM',
                                          '28  August 2019 , 11:00AM',
                                          '2 May',
                                          '15 Feb',
                                          '29 jun'
                                        ].map(
                                          (val) {
                                            return DropdownMenuItem<String>(
                                              value: val,
                                              child: Text(val),
                                            );
                                          },
                                        ).toList(),
                                        onChanged: (val) {
                                          setState(
                                            () {
                                              _dropDownValue = val;
                                            },
                                          );
                                        }),
                                                       DropdownButtonFormField(
                                                           decoration: InputDecoration(
                                   prefixIcon: ImageIcon(
                                 AssetImage(
                                     'assets/noofpersoncheckin.png'),
                                 color: Colors.blue,
                                                           )),
                                                           hint: _dropDownValue == null
                                   ? const Text(
                                       '0 Adults.    0 Children.    0 room')
                                   : Text(
                                       _dropDownValue,
                                     ),
                                                         isExpanded: true,
                                                           icon: Icon(
                                 Icons.keyboard_arrow_down_sharp,
                                 color:
                                     Color.fromARGB(255, 33, 31, 30),
                                size: 25.sp,
                                                         ),
                                                           style: const TextStyle(
                                   color: Colors.black),
                                                           items: [
                                 '23 July 2019, 10:00AM',
                                 '28  August 2019 , 11:00AM',
                                 '2 May',
                                 '15 Feb',
                                 '29 jun'
                                                           ].map(
                                 (val) {
                                   return DropdownMenuItem<String>(
                                     value: val,
                                    child: Text(val),
                                   );
                                 },
                                                           ).toList(),
                                                           onChanged: (val) {
                                 setState(
                                   () {
                                     _dropDownValue = val;
                                   },
                                 );
              }),
    SizedBox(height: .05.sh,),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text("FOOD"),
                 SizedBox(
            width: .5.sw,
                                                           ),
       GestureDetector(
         onTap: (){Get.to(Food());},
         child: Text("VIEWALL",style: TextStyle(color: Colors.blue),)),
                 ],
                  ),
            Row(
             children: [
           SizedBox( height: 150,width:.95.sw,
               child: ListView.separated(                   
              scrollDirection: Axis.horizontal,                    
              itemBuilder:(BuildContext context ,int  index){                    
            return  Row(
              children: [
                 Container(
                                 width: .35.sw,
                                  height: 150,
                                                         
                                                      child: Column(
                                                        children: [
                                                        Card(
                                                          margin: EdgeInsets.only(top: 5,right: 5),
                                                        shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15.0),
                                                    ),
                                                        child:Container(
                                          width: .25.sw,
                                                    height: 100,
                                                          child:Image.asset("assets/${Foodpic[index]}",width: 250,height: 50, fit: BoxFit.fill,),
                                                     
                                                        ),
                                       
                                                          ),
                                                         SizedBox(height: 5,),
                                                          Text('${Foodname[index]}',style: TextStyle(fontSize: 13),),
                                                        ],
                                                      ),
                                           ),
                                                     
                                           
                                                    
                                                         ],
                                                         );
                                                         },
                                          
                                                          separatorBuilder: (BuildContext context,int index){
                                          
                                return Divider();},
                                          
                                 itemCount:4 ),
                                                     ),
                                                    
                                                    
                                                    
                                                    
                                       ],
                                    ),
                                                    
                                          SizedBox(height: 5,),             
                                                    
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10,right:10,top: 1 ),
                                                        child: SizedBox(
                                                              height:500,width: .9.sw,
                                                          child: Image.asset("assets/locationmap.png",width: 80.sw,height: 300,fit: BoxFit.cover,)),
                                                      ),
                                                      Row(children: [

Container(
  height: 56,width:170,
  child: Column( crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Row(mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
  children: [
        Text("\$150",style:TextStyle(decoration: TextDecoration.lineThrough),),
        SizedBox(width: 10,),
        Text("\$127",style:TextStyle(fontWeight: FontWeight.bold),),
  ],
),
    Text("avg/night"),



],),
),
Container(height: 56,width: 170,
  
  decoration: BoxDecoration(color: Colors.blue),
  
  child:    GestureDetector(onTap: (){Get.to(Confirmorder());},
    child: Center(child: Text("Booking Now",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))),),

                                                      ],)
                                  ],
                                ),
                              ),
                            ),
                            Center( child: Column(
                              children: [
                                SingleChildScrollView(
                                  child: Container(height: .35.sh,width: 1.sw,
                                    child: GridView.builder(
                                      itemCount:  photogrid.length ,
                                      
                                      itemBuilder: ((context, index) {
                                
                                        return Card(child: Center(child:Image.asset("assets/${photogrid[index]}",fit: BoxFit.cover,height: 100,width: 100,) ,),
                                
                                      //    "assets/${photogrid[index]}",
                                        );
                                        
                                      }),
                                      
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,childAspectRatio: 2),
                                    
                                                          
                                    
                                    
                                    ),
                                  ),
                                ),
                                        Row(children: [

Container(
  height: 56,width:170,
  child: Column( crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Row(mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
  children: [
        Text("\$150",style:TextStyle(decoration: TextDecoration.lineThrough),),
        SizedBox(width: 10,),
        Text("\$127",style:TextStyle(fontWeight: FontWeight.bold),),
  ],
),
    Text("avg/night"),



],),
),
Container(height: 56,width: 170,
  
  decoration: BoxDecoration(color: Colors.blue),
  
  child:    GestureDetector(onTap: (){Get.to(Confirmorder());},
    child: Center(child: Text("Booking Now",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))),),

                                                      ],)
                              ],
                            )   ,                     



                            
                                ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: ListView( scrollDirection: Axis.vertical,
                                  children: [
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Location Over view",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                            SizedBox(height: 5,),
                                              Text("Set in landscaped gardens overlooking the Ébrié lagoon, this \nupscale hotel featuring contemporary local art and architectural\ntouches is 3 km from Mosquée de la riviéra and 17 km from \n Banco National Park.",
                                              
                                              style: TextStyle(fontSize: 11,),),
                                          ],
                                        ),
                                      ),
                                    ),
                              
                                
                              
                                    Card(child: Column( 
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                              
                                       Text("Hotel Location score",style: TextStyle(fontSize: 14),),
                                     
                                   Row(
                                     children: [
                                       Image.asset("assets/piediag.png",height: 100,width: 100,),
                                       SizedBox(width: 10,),
                                       Text("Good location overall for sightseeing,\nrecreation, and getting around"),
                                     ],
                                   ),
                                 Row(
                                     children: [
                                       Image.asset("assets/proximity.png",height: 50,width: 100,),
                                       SizedBox(width: 10,),
                                       Text("3.8 Great for promximity things to do."),
                                     ],
                                   ),
                              
                               Row(
                                     children: [
                                       Image.asset("assets/nearbytransit.png",height: 50,width: 100,),
                                       SizedBox(width: 10,),
                                       Text("0.0 No nearby transit options."),
                                     ],
                                   ),
                              
                               Row(
                                     children: [
                                       Image.asset("assets/airportaccess.png",height: 50,width: 100,),
                                       SizedBox(width: 10,),
                                       Text("2.2 OK for Airport access.."),
                                     ],
                                   ),
                              
                              Text("Scores are calculated based on data from google Maps and \nevaluate the hotel’s proximity to nearby things to do,\ntransportation and airport.",style:TextStyle(fontSize: 12)),
                              
                              
                               Row(children: [
                              
                               Text("Abidjan, Côte d'Ivoire"),
                               SizedBox(width: 70,),
                               Image.asset("assets/directions1.png",height: 100,width: 100,),
                              
                              
                              
                               ],)
                              
                                    ],),),
                              
                                    Card(child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                   
                                   Text("Things to do",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              
                                   Row(children: [
                                       Container(child: Image.asset("assets/stpaulcathedral.png") ,),
                                       Padding(
                                         padding: const EdgeInsets.only(left:8.0,top:8,bottom: 8),
                                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                           Text("St. Paul's Cathedral, Abidjan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                            Text("This contemporary, landmark cathedral\n features unique architecture, regular mass\n services ",style: TextStyle(fontSize: 12),),
                                 
                                          Row(
                                            children: [
                                 Text("Rating (1,649)"),
                                                           SizedBox(width: 80,),
                                             Text("Distance"),
                              
                                          ],),
                              
                                             Row(
                                               children: [
                                               Icon(Icons.star_outline,color: Colors.yellow,),
                                 Text("4.4"),
                                 SizedBox(width: 120,),
                                 Image.asset("assets/car.png"),
                                             Text("6 min"),
                              
                                          ],)
                              
                              
                                         ],),
                                       )
                              
                              
                              
                                   ],),
                              
                                      Row(children: [
                                       Container(child: Image.asset("assets/banconationalpark.png") ,),
                                       Padding(
                                         padding: const EdgeInsets.only(left:8.0,top:8,bottom: 8),
                                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                           Text("Banco  National  Park",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                            Text("Tranquil old-growth forest in the heart of\n Abidjan featuring a variety of plants &\n animals.",style: TextStyle(fontSize: 12),),
                                 
                                          Row(
                                            children: [
                                 Text("Rating (1,649)"),
                                                           SizedBox(width: 80,),
                                             Text("Distance"),
                              
                                          ],),
                              
                                             Row(
                                               children: [
                                               Icon(Icons.star_outline,color: Colors.yellow,),
                                 Text("4.4"),
                                 SizedBox(width: 120,),
                                 Image.asset("assets/car.png"),
                                             Text("27 min"),
                              
                                          ],)
                              
                              
                                         ],),
                                       )
                              
                              
                              
                                   ],)
                                
                                
                              
                              
                                      ],),
                                    ),),
                              
                              
                                SizedBox(height: 5,),             
                                                      
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 10,right:10,top: 1 ),
                                                          child: SizedBox(
                                                                height:500,width: .9.sw,
                                                            child: Image.asset("assets/locationmap.png",width: 80.sw,height: 300,fit: BoxFit.cover,)),
                                                        ),
                              
                                                          Row(children: [
                              
                              Container(
                                height: 56,width:170,
                                child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                      Text("\$150",style:TextStyle(decoration: TextDecoration.lineThrough),),
                                      SizedBox(width: 10,),
                                      Text("\$127",style:TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                                  Text("avg/night"),
                              
                              
                              
                              ],),
                              ),
                              Container(height: 56,width: 170,
                                
                                decoration: BoxDecoration(color: Colors.blue),
                                
                                child:    GestureDetector(
                                  onTap: (){Get.to(Confirmorder());},
                                  child: Center(child: Text("Booking Now",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                                  ),
                                  ),
                              
                                                        ],)
                              
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          
          ],
        ),
      ),
    );
  }
}
