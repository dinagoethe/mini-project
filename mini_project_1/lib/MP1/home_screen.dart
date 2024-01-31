import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_1/MP1/models/operator_model.dart';
import 'package:mini_project_1/MP1/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        SafeArea(
          child: Container(
            height: height * 0.36,
            width: width,
            padding: const EdgeInsets.all(0.0),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileScreen())),
                      icon: const Icon(Icons.account_circle),
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
              Padding(
                padding: const EdgeInsets.all(64.0),
                child: Center(
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Arknights_English_Release_Logo.svg/1280px-Arknights_English_Release_Logo.svg.png'),
                ),
              ),
            ]),
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.65,
          minChildSize: 0.65,
          maxChildSize: 1.0,
          builder: (BuildContext context, scrollController) {
            return ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
              child: Container(
                padding: const EdgeInsets.all(24.0),
                color: const Color(0xFF5C5C5C),
                child: GridView.count(
                  controller: scrollController,
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: operatorModelList
                      .map((e) => Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    e.image,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      if (kDebugMode) {
                                        print('Error loading image: $error');
                                      }
                                      return ErrorWidget(
                                          'Image failed to load');
                                    },
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    e.name,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, bottom: 8.0),
                                  child: Text(
                                    e.classType.join(', '),
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
