import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Get X Tutorials"),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dialog Alert"),
              subtitle: Text("Gets dialog alert with getx."),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete chat",
                    titlePadding: EdgeInsets.all(10),
                    content: Text("Are you sure?"),
                    cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Back"),
                    ),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                          Navigator.pop(context);
                        },
                        child: Text("Yes")));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Bottom Sheet"),
              subtitle: Text("Getx bottom sheet with getx."),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.changeTheme(ThemeData.light());
                          },
                          child: Text(
                            "Light",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                          child: Text(
                            "Dark",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/screen_one", arguments: {
                  "name": "Hello World",
                });
              },
              child: Text("Go to Screen one"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Hello",
            "World",
            duration: Duration(seconds: 1),
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.blueAccent,
            mainButton: TextButton(
              onPressed: () {},
              child: Text("On"),
            ),
          );
        },
      ),
    );
  }
}
