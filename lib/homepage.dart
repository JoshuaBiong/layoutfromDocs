import 'package:flutter/material.dart';

import 'button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isChange = false;

class _HomePageState extends State<HomePage> {
  void changecolor() {
    setState(() {
      isChange = !isChange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isChange ? Colors.red : Colors.blue,
        title: const Center(child: Text('Layout from docs')),
      ),
      body: Column(
        children: [
          // image part
          Image.asset("assets/land.jpg"),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Some Random Falls",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("From the internet")
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: changecolor,
                      child:
                          Icon(Icons.star, color: isChange ? Colors.red : null),
                    ),
                    Text("41")
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Mybutton(icon: Icons.phone, text: "Call"),
                Mybutton(icon: Icons.near_me, text: "Route"),
                Mybutton(icon: Icons.share, text: "Share"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
                "joshua biong josjoa is the amazing pogrammer someday dayjos ljoshu k pkpkpk pkpkpkp kpdkpsk kspdkpks ppkspdkp kpsdk pkdfpk pskdp kdpsk pksdp k aufhg"),
          ),
        ],
      ),
    );
  }
}
