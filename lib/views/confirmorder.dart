

import 'package:flutter/material.dart';
import 'package:hotels/views/hoteldescription.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/views/paymentsmethods.dart';
import 'package:hotels/views/ratingreview.dart';

import 'package:hotels/const/custom.dart';
import 'package:hotels/views/redeemedvoucher.dart';



class Confirmorder extends StatefulWidget {
  const Confirmorder({ Key? key }) : super(key: key);

  @override
  State<Confirmorder> createState() => _ConfirmorderState();
}

class _ConfirmorderState extends State<Confirmorder> {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
        
        
        
        Padding(
          padding: const EdgeInsets.all(18.0),
          child:   Container(height: .6.sh,width: .90.sw,
          
            child: Column(children: [
            
            
            
            
            
              Row(children: [Text("Room info",style: TextStyle(fontSize: 14),)],),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
             Text("No.of rooms"),
             Text("1"),
            
              ],),
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
             Text("Room type"),
             Text("Air conditioned"),
            
              ],),
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
             Text("Room"),
             Text("3 Nights (\$127 x 3 = \$381)"),
            
              ],),
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
             Text("Taxes"),
             Text("\$25"),
            
              ],)
            
            
            ],),),
          ), 
            
            Row(children: [Text("Guest info")],),
            
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
             Text("Name"),
             Text("John smith"),
            
              ],),
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
             Text("Email"),
             Text("johnsmith@gmail.com"),
            
              ],),
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
             Text("Mobile number"),
             Text("+225 698698966"),
            
              ],),
             
             
            
            ],),),
          ),
            
            
            
            
            Row(children: [Text("Promo code")],),
            Row(children: [GestureDetector(
              onTap: (){Get.to(Redeemedvoucher());},
              child: Text("If you have promo code pleae enter it below"))],),
            
            TextFormField(decoration: InputDecoration(labelText: "Enter Promo code"),),
            SizedBox(height: 15,),
            
            Button(color2: Colors.white, ijkl: () { Get.to(Paymentmethods()); }, text2: 'Confirm order',),
            
            
            ],
            
            
            
            
            
            ),
          
          ),
        ),
        
        
        
        
            ]),
        ),
        ),
        );
  }
}