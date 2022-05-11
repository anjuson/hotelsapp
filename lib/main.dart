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
                  button: TextStyle(fontSize: 45.sp)
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
    Timer(const Duration(seconds: 4),
          ()=>Navigator.pushReplacement(context,
           MaterialPageRoute(builder:
            (context) => 
            const Homepage()
            ),), 
            );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.white ,
      child: Image(image: const AssetImage("assets/splash.png",),width: 1.sw,height: double.infinity,fit: BoxFit.cover,),
    );
    
     
  }
}
