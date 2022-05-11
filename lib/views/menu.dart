


import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hotels/homepage.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/signin.dart';
import 'package:hotels/auth/forgotpassword.dart';
import 'package:hotels/views/hotel.dart';
import 'package:hotels/views/myprofile.dart';




class Menu extends StatefulWidget {
  const Menu({ Key? key }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {


int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    
        static const List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   'Index 0: Rooms',
    //   style: optionStyle,
    // ),
	      Hotel(),
	
	 Text(
      'Index 1: Car booking',
      style: optionStyle,
    ),
    Text(
      'Index 2: Car washing',
      style: optionStyle,
    ),
   Myprofile(),
    Text(
      'Index 4: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
       return SafeArea(
         child: Scaffold(
             // appBar: AppBar(
             //   title: const Text('BottomNavigationBar Sample'),
             // ),
             body: SingleChildScrollView( scrollDirection: Axis.vertical,
               child: Column(
                 children: [
                   Container(height: 1.sh,
                     child: Center(
                           child: _widgetOptions.elementAt(_selectedIndex),
                     ),
                   ),
                 ],
               ),
             ),
             bottomNavigationBar: Container(
               decoration: BoxDecoration(
      gradient: LinearGradient(colors: [deepblue,deepgreen],begin:Alignment.centerLeft ,end: Alignment.centerRight),
    ),
               child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.location_city,color: Colors.black,),
                label: 'Rooms',
                backgroundColor: Colors.transparent,
            ),
               
               BottomNavigationBarItem(
                icon: Icon(Icons.car_rental,color: Colors.black,),
                label: 'Car booking',
                backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_car_wash,color: Colors.black,),
                label: 'Car washing',
                backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Colors.black,),
                label: 'My profile',
                backgroundColor: Colors.transparent,
            ),
                      BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: Colors.black,),
                label: 'Settings',
                backgroundColor: Colors.transparent,
            ),
         
          ],
           
               currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black12,
          onTap: _onItemTapped,
               ),
             ),
           ),
       );
  }
}