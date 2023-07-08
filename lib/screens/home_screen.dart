import 'package:doctor/screens/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../doctors_section.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List catNames=["Dental","Heart","Eye","Brain","Ear"];

  List<Icon> catIcons = [

    const Icon(MdiIcons.toothOutline,color: pColor,size: 30,),
    const Icon(MdiIcons.heartPlus,color: pColor,size: 30,),
    const Icon(MdiIcons.eye,color: pColor,size: 30,),
    const Icon(MdiIcons.brain,color: pColor,size: 30,),
    const Icon(MdiIcons.earHearing,color: pColor,size: 30,),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color(0xFFD9E4EE),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      pColor.withOpacity(0.8),
                      pColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                  padding:const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  "images/doctor1.jpg"
                                ),
                              ),
                              Icon(
                                Icons.notifications_outlined,
                                color: wColor,
                                size: 30,
                              )
                            ],
                          ),

                          const SizedBox(height: 15,),
                          const Text(
                            "Hello Pesent",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: wColor
                          ),
                          ),

                          const SizedBox(height: 10,),

                          const Text(
                            "Your Health is Our\nFirst Priority",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: wColor
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 15,bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 55,
                            alignment: Alignment.center,
                           decoration: BoxDecoration(
                             color: wColor,
                             borderRadius: BorderRadius.circular(10),
                             boxShadow: const [
                               BoxShadow(
                                 color: sdColor,
                                 blurRadius: 6,
                                 spreadRadius: 3,
                               )
                             ]
                           ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search here...",
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  size: 25 ,
                                )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(left: 15),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: bColor.withOpacity(0.7),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15,),
                    SizedBox(
                     height: 100,
                     child: ListView.builder(
                         shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       itemCount: catNames.length,
                       itemBuilder: (context, index){
                           return Column(
                             children: [
                             Container(
                               margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                               height: 60,
                               width: 60,
                               decoration: const BoxDecoration(
                                 color: Color(0xFFF2F8FF),
                                 shape: BoxShape.circle,
                                 boxShadow: [
                                   BoxShadow(
                                     color: sdColor,
                                     blurRadius: 4,
                                     spreadRadius: 2,
                                   )
                                 ]
                               ),
                               child: Center(
                                 child: catIcons[index],
                               ),
                             ),
                               const SizedBox(height: 10,),
                               Text(
                                 catNames[index],
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.w500,
                                   color: bColor.withOpacity(0.7),
                                 ),
                               )
                             ],
                           );
                       },
                     ),
                    ),

                    const SizedBox(height: 30,),

                    Padding(
                        padding:const EdgeInsets.only(left: 15),
                      child: Text(
                        "Recommended Doctors",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: bColor.withOpacity(0.7),
                        ),
                      ),
                    ),

                    const DoctorsSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
