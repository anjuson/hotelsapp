


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/const/custom.dart';



class Customerbookinghistory extends StatefulWidget {
  const Customerbookinghistory({ Key? key }) : super(key: key);

  @override
  State<Customerbookinghistory> createState() => _CustomerbookinghistoryState();
}

class _CustomerbookinghistoryState extends State<Customerbookinghistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(children: [
                Icon(Icons.arrow_back_ios_new,color: Colors.black,),
              Text("Booking History",style: TextStyle(fontSize: 20),),
              SizedBox(width:125,),
              Text("Clear All",style: TextStyle(color: Colors.blue),)
          ,    
              
              ],),
              
          
                   SizedBox(height:10 ,),
              Card(child: Column(
                children: [
            

TextFormField(
                    //autovalidateMode: AutovalidateMode.always ,

                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: Icon(
                        Icons.close,
                      ),

                      // icon: Icon(Icons.person),

                      hintText: 'Search',

                      //  labelText: 'Name *',
                    ),
                  ),



          
                SizedBox(height: 15,),
          
                  Container( height: .70.sh,width: .95.sw ,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context ,int  index){
          
              return Row(children: [
          
                Image.asset('assets/${Hotellist[index]}',height: 100,width: 100,fit: BoxFit.cover,),
           Padding(
             padding: const EdgeInsets.only(left: 10),
             child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   
                   Text('${Hoteltext[index]}'),
                   
                   
                   
                   
                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
             children: [
             Icon(Icons.star_border_outlined,color: Colors.yellow,),
             Text('${hotellistrating[index]}'),
             SizedBox(width:50 ,),
             Text('${hotellistreview[index]}'),
           
           
                   ],),
                   Text('${hotellistbookingdate[index]}'),
                   Row(children: [
           Text('${hotellistdiscount[index]}',style: TextStyle(color: Colors.yellow),),
            SizedBox(width:20 ,),
             Text('${hotelistprice[index]}'),
                  SizedBox(width:20 ,),
             SizedBox(
           width: 100,height: 20,
                   child: Button(text2: 'Bookagain', color2: Colors.white, ijkl: (){},
                   
                   ),
                   ),
           
                   ],)
           
                   
                   
                   ],),
           )
          
          
              ],);
            }, 
                  
                  
                  
                  separatorBuilder: (BuildContext context,int index ){
          return Divider();
          
                  }, 
                  itemCount: 3),),
                ],
              ),)
              
              
              
            ],),
          ),
        ),
        
      ),
    );
  }
}


