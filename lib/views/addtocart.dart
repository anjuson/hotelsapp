



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/views/proceedtopayment.dart';


class Addtocart extends StatefulWidget {
  const Addtocart({ Key? key }) : super(key: key);

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
 automaticallyImplyLeading: false,
 leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
 title: const Text("Food cart",style: TextStyle(color: Colors.black),),

      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(color: const Color.fromARGB(255, 192, 189, 180)),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          
          const Text("2  Items added",style: const TextStyle(color: Color.fromARGB(255, 12, 10, 0)),),
          
          const Text("Total : \$12"),
          
            ],),
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
      Row(children: [
      Column(
        children: [
          Image.asset("assets/fooddetailsimage.png",height: 90,width: 100,fit: BoxFit.cover,),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child:   Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const SizedBox(height:5 ,),
        const Text("Bagels with turkey and bacon"),
        
        const Text("\$10"),
        
        Row( mainAxisAlignment: MainAxisAlignment.end,
          
          children: [
        
        SizedBox(height: 25,width: 25,
        
          child: ElevatedButton(onPressed: (){}, child: const Center(child: Text("+",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 20, 2, 1)),)))),
        
        const Text("1"),
        
        InkWell(
          onTap: () {
          
          },
          child: Container(
            color: Colors.green,
            height: 25,width: 25,
            child: Center(
        
              child: const Icon(Icons.remove,size: 20,color: Colors.red,),
            ),
          ),
        ),
        
        ],), 
        
        ],),
      ),
        
      ],),
      
      const Divider(color: const Color.fromARGB(255, 92, 90, 84),),
      
      
      Row(children: [
      Column(
        children: [
          Image.asset("assets/sandwich.png",height: 90,width: 100,fit: BoxFit.cover,),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child:   Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const SizedBox(height:5 ,),
        const Text("sandwich"),
        
        const Text("\$5"),
        
        Row( mainAxisAlignment: MainAxisAlignment.end,
          
          children: [
        
        SizedBox(height: 25,width: 25,
        
          child: ElevatedButton(onPressed: (){}, child: const Align(
      child: Text("+",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 20, 2, 1)),),
      alignment: Alignment.center,))),
        
        const Text("1"),
        
        SizedBox(
        
          height: 25,width: 25,
        
          child: ElevatedButton(onPressed: (){}, child: const Align(child: const Icon(Icons.remove,size: 10,color: Colors.red,),
        
          alignment: Alignment.center,),)),
        
        ],),
        
      
        
        
        ],),
      ),
        
      ],),
      
      const Divider(color: const Color.fromARGB(255, 92, 90, 84),),
      
      Row(children: [
      
      const Text("Select Time"),
      
      
      ],),
      
      const Divider(color: const Color.fromARGB(255, 92, 90, 84),),
      
       const Text("Order Summary",style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
       Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      const Text("Bagels with turkey and bacon",style:const TextStyle(fontSize: 14)),
      const Text("\$10",style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
      
       ],),
       Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
      const Text("Sandwich",style:TextStyle(fontSize: 14))   ,
      const Text("\$5",style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
      
       ],),
      
       const Divider(color: Color.fromARGB(255, 92, 90, 84),),
      
       Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
        const Text("Sub total",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
        const Text("\$15",style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
      
      
       ],),
      
        const Divider(color: Color.fromARGB(255, 92, 90, 84),),
      
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
      const Text("Service tax",style:TextStyle(fontSize: 14)),
      const Text("\$2",style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
      
      
        ],),
      
          const Divider(color: const Color.fromARGB(255, 92, 90, 84),),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      
        const Text("Total",style:const TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
        const Text("\$17",style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
          ],),
      
      
      
            ],),
          ),
      
        ElevatedButton(onPressed: (){Get.to(const Proceedtopayment());}, child: const Text("proceed  to  payment"),),
      
        ],),
      ),
      
    );
  }
}