





import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:hotels/const/custom.dart';
import 'package:hotels/views/customerbookinghistory.dart';
import 'package:hotels/views/editprofile.dart';



class Myprofile extends StatefulWidget {
  const Myprofile({ Key? key }) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
        body:SingleChildScrollView(
          child: Column(
               children: [
             Stack(children: [
            Container(  
              width: 1.2.sw,height: .80.sh,
               child: Image.asset('assets/johnsmith.png',height: .80.sw,  width: 1.sw,fit: BoxFit.fill,),
               ),

Padding(
  padding: const EdgeInsets.only(top:50,left:330 ,),
  child:   GestureDetector( onTap: (){

  showDialog(context: context, builder: (BuildContext context){

    return SimpleDialog('title');
  }
  );


  },
    
    child: Icon(Icons.more_vert)),
),
        
               Padding(
                 padding: const EdgeInsets.only(top:450,left:30 ,right:30  ),
                 child: Container(width: .85.sw,height: .30.sh,
          
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)) ),
          child: Card( shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.only(
                 
                 topLeft: Radius.circular(30)),
          ),
               child: Padding(
                 padding: const EdgeInsets.only(top:30),
                 child: Container(
                   width: .75.sw,height: .20.sh,
                   child: Column(children: [
        
          Text("John Smith",style: TextStyle(fontSize: 30),),
          SizedBox(height: 10,),
                 Text("johnsmith@gmail.com",style: TextStyle(fontSize: 20)),
          SizedBox(height: 10,),
          Text("+225 698698966",style: TextStyle(fontSize: 20)),
                   ],),        
                 ),
               ),),),


               ),
          Padding(
            padding: const EdgeInsets.only(top: 430,left: 290),
            child: GestureDetector(
              onTap: (){Get.to(Editprofile());},
              child: CircleAvatar(
                  backgroundColor: Colors.green,
                     radius: 30,
                     child:  Image.asset("assets/pen1.png",fit: BoxFit.fill,height: 30,width: 30,),
                   // backgroundImage: AssetImage("assets/pen1.png"), 
                     //Image(image: "assets/pen1.png"),
                  ),
            ),
               
          ),
           Padding(
          padding: const EdgeInsets.only(top:620,left: 15,right: 15),
          child: Container(   width: 1.sw,height: .40.sh,
          
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
    colors: [buttonblue,buttongreen],
	  begin: Alignment.centerLeft,
	  end: Alignment.centerRight,),
          
          ),
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Image.asset('assets/simpic1.png',width:50,height: 30,),
                      Image.asset('assets/visa1.png',width:100,height: 30,),
                   ],
                 ),
               ),

 SizedBox(height: 10,),
                      Text("Card Number",style: TextStyle(color: Colors.white70,fontSize: 20),),

                         SizedBox(height: 20,
                           child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: '0085  7789   2236   3685',
    labelText: '0085  7789   2236   3685',
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
),
                         ),

SizedBox(height: 10,),
                      Text("Card Holder Name",style: TextStyle(color: Colors.white70,fontSize: 20),),

                         SizedBox( height: 20,
                           child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: 'John smith',
    labelText: 'John smith',
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
),
                         ),
SizedBox(height: 10,),
Row(
 // mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
  
  Column(crossAxisAlignment: CrossAxisAlignment.start,
    
    children: [
       Text("Expiry date",style: TextStyle(color: Colors.white70,fontSize: 20),),
       SizedBox( width: 110,height: 30,
         child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: '06/22',
    labelText: '06/22',
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  // validator: (String? value) {
  //   return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  // },
),
       ),



  ],),
  SizedBox(width:50,),
  Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
            Text("CVV",style: TextStyle(color: Colors.white70,fontSize: 20),),
            SizedBox( width: 120,height: 30,
              child: TextFormField(
  decoration: const InputDecoration(
   // icon: Icon(Icons.person),
   hintText: '321',
    labelText: '321',
  ),
  onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
  },
  // validator: (String? value) {
  //   return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  // },
),
            ),
  ],),
  
  
  ],

               
),




 
              ],),
            ),

          ),
        ),
    
             ],),

              SizedBox(height: 20,),
      Text("+ Add new card",style: TextStyle(color: Colors.blue,fontSize: 18),),

      SizedBox(height: 60,),
   

                       ],  
                       
                          
          ),
        ),
    );
  }
}




class SimpleDialog extends StatelessWidget {
 // const Alertdialouge({ Key? key }) : super(key: key);
final title;
SimpleDialog(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 130,bottom: 290),
      child: Container( width: 50,height: 50,
    //  decoration: BoxDecoration(color: Colors.blue),
        child: AlertDialog(
          backgroundColor: Colors.blue,
          actionsPadding: EdgeInsets.zero,
          
        //  title: Text("hello  shouvik"),
        //  content:Text("sarkhel") ,
          actions: [

            new FlatButton(onPressed: (){Get.to(Customerbookinghistory());}, child: Text("Room Booking History",style: TextStyle(fontSize: 10),)),
           // new FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Room Booking")),
               new FlatButton(onPressed: (){Get.to(Customerbookinghistory());}, child: Text("Change Password",style: TextStyle(fontSize: 10),)),
          ],
        ),
      ),
    );
  }
}