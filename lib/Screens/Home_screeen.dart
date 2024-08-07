// lib/Screens/Home_screeen.dart

import 'package:flutter/material.dart';
import 'Second_screen.dart'; // Import the second page

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  void Counter() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 210, 99, 99),
        title: const Text(
          'وَمَنْ يَتَّقِ اللَّهَ يَجْعَلْ لَه مِنْ أَمْرِهِ يسْرًا',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.50,
                    height: MediaQuery.of(context).size.height / 1.50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 210, 114, 114),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(offset: Offset(1, 9), blurRadius: 20),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 215, 152, 152),
                        ),
                        child: Text(
                          count.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Transform.translate(
                    offset: Offset(1, 9),
                    child: Container(
                      width: 190,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 210, 112, 112),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 9),
                            blurRadius: 20,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => Counter(),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(maximumSize: Size(80, 80)),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () => reset(),
                            child: Icon(Icons.wifi_protected_setup),
                            style: ElevatedButton.styleFrom(maximumSize: Size(80, 80)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                    },
                    child: Text('انتقل للأدعية ',
                    style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold) ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 210, 99, 99)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

