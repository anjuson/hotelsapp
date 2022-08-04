import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotels/views/Settingsmenu.dart';


class Privacypolicy extends StatefulWidget {
  const Privacypolicy({ Key? key }) : super(key: key);

  @override
  State<Privacypolicy> createState() => _PrivacypolicyState();
}

class _PrivacypolicyState extends State<Privacypolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Policy",style: TextStyle(color: Colors.black),
      ),
      elevation:0,
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: (){Get.to(Settingsmenu());},
        child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      
      backgroundColor: Colors.white,
      
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
      
            Text("Privacy Policy",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),
      
            Text("built the Find hotel app as a Commercial app. This \nSERVICE is provided by and is intended for use as is.",style: TextStyle(fontSize: 12),),
       SizedBox(height: 10,),
      Text("This page is used to inform visitors regarding our policies \nwith the collection, use, and disclosure of Personal \nInformation if anyone decided to use our Service.",style: TextStyle(fontSize: 12),),
       SizedBox(height: 10,),
      Text("If you choose to use our Service, then you agree to the \ncollection and use of information in relation to this policy.\n The Personal Information that we collect is used for \nproviding and improving the Service. We will not use or \nshare your information with anyone except as described\n in this Privacy Policy.",style: TextStyle(fontSize: 12),),
       SizedBox(height: 10,),
      Text("The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Find hotel unless otherwise defined in this Privacy Policy.",style: TextStyle(fontSize: 12),),
       SizedBox(height: 10,),
      Text("Information Collection and Use",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
       SizedBox(height: 10,),
      
      Text("For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information. The information that we request will be retained by us and used as described in this privacy policy.",style: TextStyle(fontSize: 12),),
       SizedBox(height: 10,),
      Text("The app does use third party services that may collect information used to identify you.",style: TextStyle(fontSize: 12),),
       SizedBox(height: 10,),
      Text("Link to privacy policy of third party service providers used by the app",style: TextStyle(fontSize: 12),),
       SizedBox(height: 10,),
      Text("Log Data",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
       SizedBox(height: 10,),
      Text("We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.",style: TextStyle(fontSize: 12),),
       SizedBox(height: 10,),
      Text("Cookies",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
       SizedBox(height: 10,),
      Text("Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These ",style: TextStyle(fontSize: 12),),
      
      
          ],),
        ),
      ),
      
    );
  }
}