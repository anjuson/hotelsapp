import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/views/fooddetails.dart';


  bool _value = false;
bool _switchValue=true;

class Food extends StatefulWidget {
  const Food({ Key? key }) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {

   final GlobalKey<ScaffoldState> _scaffoldstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        key: _scaffoldstate,
        endDrawerEnableOpenDragGesture: false,     
      body:Column(children: [
      Row(
         children: [
           IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
           Text("Food",style: TextStyle(color: Colors.black,fontSize: 20),),
    
           SizedBox(width:.30.sw,),
            Text("Veg",style: TextStyle(fontSize: 10,color: Colors.black),),
                  Switch(
                   activeColor: greenDeepCustom,
                  activeTrackColor: borderCustom,
                  value: _switchValue,
                  onChanged: (value) {
                  setState(() {
                  _switchValue = value;
                  });
                  }),
       Text("Non veg",style: TextStyle(fontSize: 10,color: Colors.black),),
                   // Image.asset("assets/Union.png"),
                    SizedBox( width: .10.sw,
      child: IconButton(
                icon: const Icon(
                  Icons.filter_alt_sharp,
                  color: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                     _scaffoldstate.currentState?.openEndDrawer();
                  });
                 
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
      )
         ],
       ),

         SizedBox( height: 100,width:.90.sw,
             child: ListView.separated(                   
            scrollDirection: Axis.horizontal,                    
            itemBuilder:(BuildContext context ,int  index){                    
          return  Row(
            children: [
               Container(
                               width: .15.sw,
                                height: 100,
                                                       
                     child: Column(
                 children: [
                  Container( decoration: BoxDecoration(shape: BoxShape.circle,color:Color.fromARGB(255, 201, 197, 184) ),
             width: 50,
               height: 50,
             child:Container(
               width: 8,height: 8,
               child: Image.asset("assets/${Foodvarietyicon[index]}",width: 8,height: 8, fit: BoxFit.contain,)),
                                                
              ),
              SizedBox(height: 5,),
             Text('${Foodvarietyname[index]}',style: TextStyle(fontSize: 11),),
                  ],
         ),
         ),
          SizedBox(width: 5,)
        
          ],
          );
              },
                                        
        separatorBuilder: (BuildContext context,int index){
                                        
          return Divider();},
                                        
          itemCount:6 ),
                 ),


                         Container(
                           height: .60.sh,
                           width: 1.sw,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: ListView.separated(
                                 scrollDirection: Axis.vertical,
                                 itemBuilder: (BuildContext context,
                                     int index) {
                                   return Row(
                                     children: [
                                       Expanded(
                                         child: Container(
                                           height: .15.sh,
                                           width: .25.sw,
                                           decoration: BoxDecoration(
                                             borderRadius:
                                                 BorderRadius.circular(
                                                     30),
                                           ),
                                           child: GestureDetector(onTap: () {
                                             Get.to(Fooddetails());
                                           },
                                             child: Image.asset(
                                               "assets/${ Foodpic[index]}",
                                               fit: BoxFit.cover,
                                               height: .10.sh,
                                               width: .25.sw,
                                             ),
                                           ),
                                         ),
                                       ),
                                       Padding(
                                         padding:
                                             const EdgeInsets.only(
                                           left: 8.0,
                                         ),
                                         child: Expanded(
                                           child: Container(
                                             height: .24.sh,
                                             width: .70.sw,
                                             child: Column(
                                               mainAxisAlignment:
                                                   MainAxisAlignment
                                                       .start,
                                               crossAxisAlignment:
                                                   CrossAxisAlignment
                                                       .start,
                                               children: [
                                                 SizedBox(
                                                   height: 25,
                                                 ),
                                                 Text(
                                                   '${Foodname[index]}',
                                                   style: TextStyle(
                                                       fontSize: 15),
                                                 ),
                                                 SizedBox(
                                                   height: 5,
                                                 ),
                                                 Row(
                                                   children: [
                                                     Icon(
                                                       Icons
                                                           .star_border_outlined,
                                                       color: Colors
                                                           .yellow,
                                                     ), Text("3.9"),
                                                     SizedBox(
                                                       width: 35,
                                                     ),
                                                     Text(
                                                         "Reviews (200)"),
                                                   ],
                                                 ),
                                                 SizedBox(
                                                   height: 5,
                                                 ),
                                                 Text(
                                                   "neque, amet blandit tincidunt vulputate ",
                                                   style: TextStyle(
                                                       fontSize: 12),
                                                 ),
                                                 SizedBox(
                                                   height: 5,
                                                 ),
                                                 Row(
                                                   children: [
                                                     Text("25% OFF ",style: TextStyle(color: Colors.yellow),),
                                                     SizedBox(
                                                       width: 10,
                                                     ),
                                                     SizedBox(width: 45,
                                                       child: Text('${Foodnameprice[index]}')),
                                                     SizedBox(
                                                       width: 65,
                                                     ),
                                                     SizedBox(
                                                         width: .20.sw,
                                                         height: 30,
                                                         child: Button(
                                                             text2:
                                                                 "Add",
                                                             color2: Colors
                                                                 .white,
                                                             ijkl:
                                                                 () {}))
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   );
                                 },
                                 separatorBuilder:
                                     (BuildContext context,
                                         int index) {
                                   return Divider();
                                 },
                                 itemCount: 4),
                           ),
                         ),



    
 ],) ,

bottomSheet: SizedBox( height:0.12.sh,width: 1.sw,
  child:   Row(
    children: [
      Expanded(
        child: Row(
      children: [
       Expanded(child: TextButton(onPressed: (){}, child: Text("Total Items Added : 2",style: TextStyle(fontSize: 12.sp),))),
        Expanded(child: TextButton(onPressed: (){}, child: Text("Total Items Added : 2",style: TextStyle(fontSize: 12.sp),))),
      
        ],),
      ),
      Container(
     height:0.12.sh,
     width: 0.25.sw,
     decoration: BoxDecoration(
       color:Colors.greenAccent ,
       borderRadius: BorderRadius.only(bottomRight:Radius.circular(40))
     ),
        child: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assetName"))))
    ],
  ),
),


 
      ),
    );
  }
}