import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      buildTab(0, "House"),
      buildTab(1, "Apartment"),
      buildTab(2, "Hotel"),
      buildTab(3, "Villa")
    ]);
  }

  Widget buildTab(int index, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: selectedIndex == index
          ? Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              height: 30,
              width: (MediaQuery.of(context).size.width - 20) / 4,
              child: Center(child: Text(
                label,
                style: const TextStyle(color: Colors.white),
              )))
          : SizedBox(
              width: (MediaQuery.of(context).size.width - 20) / 4,
              child: Text(
                label,
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
