import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:hotels/const/custom.dart';
import 'package:hotels/views/hoteldescription.dart';

class Selectedhotels extends StatefulWidget {
  const Selectedhotels({Key? key}) : super(key: key);

  @override
  State<Selectedhotels> createState() => _SelectedhotelsState();
}

class _SelectedhotelsState extends State<Selectedhotels> {
  var _dropDownValue;
  var filterby ;
  var isselected;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: SizedBox(
                  height: .05.sh,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hotels",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                    height: .05.sh,
                    child: Text(
                      "Abidjan 200 hotels",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 10, top: 10),
                child: SizedBox(
                  height: .10.sh,
                  child: TextFormField(
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
                ),
              ),
              DefaultTabController(
                  length: 3,
                  child: SizedBox(
                    width: 1.sw,
                    height: .80.sh,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(width: 3, color: Colors.white),
                            color: Colors.white,
                          ),
                          child: TabBar(
                            //indicatorSize: ,
                            //   indicatorPadding: ,
                            labelStyle: TextStyle(fontSize: 12),
                            labelColor: Colors.black,
                            indicator: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                //  borderRadius: BorderRadius.horizontal(left: Radius.circular(12.r)),
                                color: Colors.white),
                            tabs: [
                              Container(
                                height: .05.sh,
                                width: .30.sw,
                                child: Row(
                                  children: [
                Tab( text: "Amenities", ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                              ),
                              Container(
                                height: .05.sh,
                                width: .30.sw,
                                child: Row(
                                  children: [
                                    Tab(
                                      text: "Filter by",
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                              ),
                              Container(
                                height: .05.sh,
                                width: .30.sw,
                                child: Row(
                                  children: [
                                    Tab(
                                      text: "Sort by",
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Container(
                            height: .80.sh,
                            width: 1.sw,
                            child: TabBarView(
                              //  physics: BouncingScrollPhysics(),
                              //  // dragStartBehavior:DragStartBehavior.,
                              children: <Widget>[
                /////////////-------------------------------Aminities--------------------------////////////////////
                                Center(
                                  child: Container(
                                    height: .80.sh,
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
                                                    child: Image.asset(
                                                      "assets/${Hotellist[index]}",
                                                      fit: BoxFit.cover,
                                                      height: .10.sh,
                                                      width: .25.sw,
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
                                                            '${Hoteltext[index]}',
                                                            style: TextStyle(
                                                                fontSize: 13),
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
                                                              ),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              Text(
                                                                  "Reviews (200)"),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            "Set in landscaped gardens overlooking the",
                                                            style: TextStyle(
                                                                fontSize: 12),
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text("25% OFF "),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text("\$127"),
                                                              SizedBox(
                                                                width: 15,
                                                              ),
                                                              SizedBox(
                                                                  width: .30.sw,
                                                                  height: 20,
                                                                  child: Button(
                                                                      text2:
                                                                          "Booknow",
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
                                          itemCount: 7),
                                    ),
                                  ),
                                ),

 /////////////-------------------------------AMINITIES--------------------------////////////////////


     /////////////-------------------------------filter--------------------------////////////////////
                                Column(
                                  children: [
                                   Container(height: .55.sh,width: 1.sw,
                                     child: Padding(
                                       padding:
                                           const EdgeInsets.only(top: 8.0,left: 10,right: 10),
                                       child: GridView.count(
                                     //    physics: NeverScrollableScrollPhysics(),
                                         childAspectRatio: 3,
                                         padding: EdgeInsets.all(5),
                                         mainAxisSpacing: 10.0,
                                         crossAxisSpacing: 10,
                                         crossAxisCount: 2,
                                         children: List.generate(10, (index) {
                                           return Container(
                                             height: 100,
                                             width: 150,
                                             decoration: BoxDecoration(
                                               borderRadius:
                                                   BorderRadius.circular(10),
                                               color: Colors.white,
                                               border: Border.all(
                                                 color: Colors.blue,
                                               ),
                                             ),
                                             child: Column(
                                               mainAxisAlignment:
                                                   MainAxisAlignment.center,
                                               crossAxisAlignment:
                                                   CrossAxisAlignment.center,
                                               children: [
                                                 Image.asset(
                                                   "assets/${Aminitiesimage[index]}",
                                                   color: Colors.blue,
                                                 ),
                                        Text( '${Aminitiestext[index]}',
                                                   style:
                                                       TextStyle(fontSize: 13),
                                                   //  style: Theme.of(context).textTheme.headline6,
                                                 ),
                                               ],
                                             ),
                                           );
                                         }),
                                       ),
                                     ),
                                   ),

                                    Container(height: .10.sh,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: .05.sw,
                                          ),
                                          SizedBox(
                                            width: .40.sw,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Clear",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          20.0),
                                                ),
                                                side: BorderSide(
                                                  width: 2.0,
                                                  color: Colors.blue,
                                                ),
                                                primary:
                                                    Colors.white, // background
                                                onPrimary:
                                                    Colors.blue, // foreground
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: .20.sh,
                                            width: .10.sw,
                                          ),
                                          SizedBox(
                                            width: .40.sw,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Apply",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        new BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  side: BorderSide(
                                                    width: 2.0,
                                                    color: Colors.blue,
                                                  )),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                   
                                  ],
                                ),

   /////////////-------------------------------filter--------------------------////////////////////
  
  
   ///  /////////////-------------------------------sort by --------------------------////////////////////
   
                                Stack(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        "assets/spotlocation.png",
                                        width: 1.sw,
                                        height: .70.sh,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 150, left: 20, right: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(Hoteldescription());
                                        },
                                        child: Container(
                                          height: .12.sh,
                                          width: 1.sw,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Image.asset(
                                                    "assets/hedengolf.png",
                                                    height: 80,
                                                    width: 90,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 80,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Heden golf"),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                          ),
                                                          Text("3.9"),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Text("Reviews(200)"),
                                                        ],
                                                      ),
                                                      Text(
                                                        "Set in landscaped gardens overlooking the ",
                                                        style: TextStyle(
                                                            fontSize: 11),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "25% OFF",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .yellow),
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Text("\$127"),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                 /////////////-------------------------------sort  by--------------------------////////////////////
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
