import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.blue,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [

                Center(
                  child: Text("Theme Change"),
                ),
              ],
            ),
            height: 50,
            width: 470,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(style: BorderStyle.solid),
            ),
          )
        ],
      ),
    );
  }
}
