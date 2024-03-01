import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          title:const Text('My first app'),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {
              print('Menubutton');
            },
          ),
          actions: const [Icon(Icons.phone_android)],
        ),



        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,

          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.20),
          ),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment:CrossAxisAlignment.center ,

              children: [const SizedBox(
                height: 15,

              ),
                const Text(
                  "Patuakhali Science and Technology University",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width :200,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.9),
                    image: const DecorationImage
                      (fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/Pstu logo.png'
                      ),

                    ),
                  ),

                ),
                const SizedBox(
                  height: 15,
                ),
                const Center( child: Text(
                  "Faculty of Computer Science and Engineering",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,



                  ),
                ),),

                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(color: Colors.red, width: 15),
                      bottom: BorderSide(color: Colors.blue, width: 15),
                      left: BorderSide(color: Colors.green, width: 15),
                      right: BorderSide(color: Colors.teal, width: 15),
                    ),
                    color: Colors.purple.withOpacity(0.9),
                    borderRadius: const BorderRadius.horizontal(), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.purple.withOpacity(0.9), Colors.purple.withOpacity(0.5)],
                    ),
                    image: const DecorationImage
                      (image: AssetImage('assets/cse.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height:15,
                ),
                const Text(
                  "Departments",
                  style:TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height:15,
                ),
                /*  const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(



                  ),
                ),*/

                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.teal,
                        backgroundImage: AssetImage('assets/EEE.jpg'),
                      ),
                      SizedBox(width: 20), // Add space between avatars
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage('assets/physics.jpg'),
                      ),
                      SizedBox(width: 20), // Add space between avatars
                      CircleAvatar(
                        radius: 80,

                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage('assets/CSIT.jpg'),
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/CCE.jpg'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height:40,
                ),
                InkWell(
                 onTap:  () {
                   print('hellow');

                 },
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text
                        (
                          'Make CSE great again',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight:FontWeight.bold,
                            color:Colors.teal,
                          )
                      ),
                    ),
                  ),
                ),






                /*Container(
                height: 200,
                width :200,
                decoration: BoxDecoration
                  (border:Border.all
                  (
                  color: Colors.black,
                  width: 15,
                ),
                  color: Colors.purple.withOpacity(0.9),
                ),

              ),*/
                /*const SizedBox(
                  height: 20,
                ),Container(
                height: 200,
                width :200,
                decoration: BoxDecoration(
                  color: Colors.amberAccent.withOpacity(0.9),
                    image:const DecorationImage(
                        image: NetworkImage(
                            "https://media.licdn.com/dms/image/C511BAQFT_frw677jiQ/company-background_10000/0/1584392331084/pstu_bd_cover?e=2147483647&v=beta&t=JXAXOynChUuSE9-7KlN5uPO87xAMcPFYtRgUd69iqTo")
                    ),
                ),

              ),const SizedBox(
                  height: 20,
                ),Container(
                height: 200,
                width :200,
                decoration: BoxDecoration(
                  color: Colors.amberAccent.withOpacity(0.9),
                ),

              ),const SizedBox(
                  height: 40,
                ),
                Container(
                height: 200,
                width :200,

                decoration: BoxDecoration(
                  color: Colors.amberAccent.withOpacity(0.9),
                ),

              ),
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage("https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQA_GcSZB5OqMJLDsH9kWXno09MUZb-z0SCpV5jLObmXbUo754xEcTVDUNmA1Z6g3fEr2ByVmiTDCCr-Rw"),
                ), const SizedBox(
            height: 20,
          ),
                Container(
                height: 200,
                width :200,
                decoration: BoxDecoration(
                  color: Colors.amberAccent.withOpacity(0.9),
                  image: DecorationImage(image: AssetImage('assets/CSIT.jpg'),),
                ),

              ), const SizedBox(
                  height: 20,
                ),*/

              ],

            ),
          ),


        ),
      ),
    );
  }
}
