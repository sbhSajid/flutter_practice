import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
        child: Scaffold(
          appBar: AppBar(leadingWidth: 50,
            shape: Border.all(),
            backgroundColor: Colors.deepOrangeAccent.withOpacity(0.7),
            centerTitle: true,
            title: Text('Home '),


            actions: [Icon(Icons.settings)],
            ),
          drawer:Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children:  const [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                  ),
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                                backgroundImage: AssetImage('assets/sajid.jpg'),
                                radius: 50,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.tealAccent),
                              'My Name'
                            ),
                          ]
                        ),
                      ),
                    ),
              ],
            ),

          )



          ),
          
          
        


    );

  }
}
