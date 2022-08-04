
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/views/Settingsmenu.dart';

class Termsandconditions extends StatefulWidget {
  const Termsandconditions({ Key? key }) : super(key: key);

  @override
  State<Termsandconditions> createState() => _TermsandconditionsState();
}

class _TermsandconditionsState extends State<Termsandconditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
      leading:GestureDetector(
        onTap: () {Get.to(Settingsmenu());       
        },
        child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
      title: Text("Terms & Conditions",style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.white,
      elevation: 0,
      ),

      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

         Text("Terms & Conditions",style: TextStyle(fontWeight: FontWeight.bold),),
         SizedBox(height: 10,),
          Text("By downloading or using the app, these terms will\n automatically apply to you – you should make sure\n therefore that you read them carefully before using the\n app. You’re not allowed to copy, or modify the app, any\n part of the app, or our trademarks in any way. You’re not\n allowed to attempt to extract the source code of the app,\n and you also shouldn’t try to translate the app into other\n languages, or make derivative versions. The app itself,\n and all the trade marks, copyright, database rights and\n other intellectual property rights related to it, still belong\n to .",style: TextStyle(fontSize: 13),),
             SizedBox(height: 10,),
           Text("is committed to ensuring that the app is as useful and\n efficient as possible. For that reason, we reserve the right\n to make changes to the app or to charge for its services,\n at any time and for any reason. We will never charge you\n for the app or its services without making it very clear to\n you exactly what you’re paying for.",style: TextStyle(fontSize: 13),),
             SizedBox(height: 10,),
            Text("At some point, we may wish to update the app. The app is\n currently available on iOS – the requirements for system\n (and for any additional systems we decide to extend the\n availability of the app to) may change, and you’ll need to\n download the updates if you want to keep using the app.\n does not promise that it will always update the app so\n that it is relevant to you and/or works with the iOS version\n that you have installed on your device. However, you\n promise to always accept updates to the application\n when offered to you, We may also wish to stop providing\n the app, and may terminate use of it at any time without\n giving notice of termination to you. Unless we tell you\n otherwise, upon any termination, (a) the rights and\n licenses granted to you in these terms will end; (b) you\n must stop using the app, and (if needed) delete it from\n your device.",style: TextStyle(fontSize: 13),),
                SizedBox(height: 10,),
             Text("Changes to This Terms and Conditions",style: TextStyle(fontWeight: FontWeight.bold),),
               SizedBox(height: 10,),
              Text("We may update our Terms and Conditions from time to\n time. Thus, you are advised to review this page\n periodically for any changes. We will notify you of any\n changes by posting the new Terms and Conditions on this\n page. These changes are effective immediately after they\n are posted on this page.",style: TextStyle(fontSize: 13),),
                  SizedBox(height: 10,),
               Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                Text("If you have any questions or suggestions about our Terms\n and Conditions, do not hesitate to contact us at +225 3658959.",style: TextStyle(fontSize: 13),),
              //   Text(""),



        ],),
      ),
      ),
      
    );
  }
}