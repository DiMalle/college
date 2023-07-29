import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavaigationState();
}

class _BottomNavaigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  final List _pages = [
    const Center(child: Text('Page 1')),
    const Center(child: Text('Page 2')),
    const Center(child: Text('Page 3')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.announcement,
              ),
              label: 'Announcement'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.cake,
              ),
              label: 'cake'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.cloud,
              ),
              label: 'data'),
        ],
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red.shade400,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
