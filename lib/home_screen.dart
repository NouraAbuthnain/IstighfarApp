import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;

  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 102, 13, 118),
        centerTitle: true,
        title: Text(
          "الصَّابِرِينَ وَالصَّادِقِينَ وَالْقَانِتِينَ وَالْمُنفِقِينَ وَالْمُسْتَغْفِرِينَ بِالْأَسْحَارِ",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.height / 1.50,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 9),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Transform.translate(
                  offset: Offset(1, 9),
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius: 20,
                              color: Colors.black)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => Counter(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              shape: BoxShape.circle,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(80, 80)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => reset(),
                              child: Icon(Icons.wifi_protected_setup),
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
