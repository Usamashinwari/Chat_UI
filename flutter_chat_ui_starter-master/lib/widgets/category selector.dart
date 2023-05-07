import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectInsex = 0;
  final List<String> categories = ['Message', 'Online', 'Groups', 'Requests'];

  Object selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      color: Colors.red,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.white60,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
              ),
            );
          }),
    );
  }
}
