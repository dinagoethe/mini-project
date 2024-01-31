import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.36,
              width: width,
              child: Stack(
                children: [
                  Container(
                    height: height * 0.31,
                    width: width,
                    color: const Color(0xFFD9D9D9),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back),
                          iconSize: 36,
                        ),
                        IconButton(
                          onPressed: () => print('Tombol Menu Ditekan'),
                          icon: const Icon(Icons.menu),
                          iconSize: 36,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Icon(Icons.account_circle, size: 96,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                "Nama",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {  }, 
                icon: Icon(Icons.edit), 
                label: Text("Edit Profile"),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: width * 0.75,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("About", style: TextStyle(fontSize: 20)),
                  Divider(
                    thickness: 2.0,
                    color: Colors.grey,
                  ),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                ]
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Activity", style: TextStyle(fontSize: 20)),
                  Divider(
                    thickness: 2.0,
                    color: Colors.grey,
                  ),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                ]
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
