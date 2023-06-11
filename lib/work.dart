import 'package:flutter/material.dart';

class MyColor extends MaterialStateColor {
  const MyColor() : super(_defaultColor);

  static const int _defaultColor = 0xcafefeed;
  // ignore: unused_field
  static const int _pressedColor = 0xdeadbeef;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return const Color.fromARGB(222, 117, 10, 10);
    }
    return const Color.fromARGB(200, 14, 255, 78);
  }
}

class MovePage extends StatefulWidget {
  const MovePage({super.key});

  @override
  State<MovePage> createState() => _MovePageState();
}

class _MovePageState extends State<MovePage> {
  PageController pc = PageController(initialPage: 1);
  int selectedindex = 0;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "ABDO TEST",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedindex = index;
            print(selectedindex);
          });
        },
        currentIndex: selectedindex,
        items: [ 
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "WADGET 2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "WADGET 1")
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "NAME",
            ),
          )
        ],
      ),
    );
  }
}
