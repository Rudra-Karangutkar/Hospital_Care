import 'package:flutter/material.dart';
import 'package:health_care/pages/opd.dart';
import 'package:health_care/pages/emergency.dart';
import 'package:health_care/pages/market.dart';
import 'home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentTabIndex = 0;

  late List<Widget> pages;
  late Home homapage;
  late Opd opdpage;
  late Market marketpage;
  late Emergency emergencypage;

  @override
  void initState() {
    super.initState();
    homapage = Home();
    opdpage = Opd();
    marketpage = Market();
    emergencypage = Emergency();

    pages = [homapage, opdpage, marketpage, emergencypage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTabIndex], // Ensure the body is set correctly
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 75, // Adjust this value to increase or decrease height
        child: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'OPD',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'Emergency',
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed, // Ensures consistent styling across all items
        ),
      ),
    );
  }
}
