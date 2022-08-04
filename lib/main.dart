import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotels/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
            builder: (context, widget) {
           //   ScreenUtil.setContext(context);
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
            theme: ThemeData(
              textTheme: TextTheme(
                  button: TextStyle(fontSize: 18.sp)
              ),
            ),
            home:const SplashScreen(),
          ),
          
    );


  }
}
 


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:4),
          ()=>Navigator.pushReplacement(context,
           MaterialPageRoute(builder:
            (context) => 
            const Homepage()
            ),), 
            );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( height: 1.sh,width: 1.sw,
      color: Colors.white ,
        child: Stack(children: [
          
          Image(image: const AssetImage("assets/splashbackground.png",),width: 1.sw,height: 1.sh,fit: BoxFit.cover,),
        
           Padding(
             padding: const EdgeInsets.only(top: 15),
             child: Center(child: Container(
               width:.5.sw,height: .3.sh,             
               child: Image(image: const AssetImage("assets/splash.png",),width:.5.sw,height: .3.sh,fit: BoxFit.fill,))),
           ),
             Padding(
               padding: const EdgeInsets.only(top: 345),
               child: Center(child: Text("Find Hotel",style: TextStyle(fontSize: 50,color: Colors.white),)),
             ),
    
    
                     
        
        ]),
      ),
    );
    
     
  }
}
