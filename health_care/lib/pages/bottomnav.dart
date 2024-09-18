import 'package:flutter/material.dart';
import 'package:health_care/pages/chatbot.dart';
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
  late ChatBot chatbotpage;

  @override
  void initState() {
    super.initState();
    homapage = Home();
    opdpage = Opd();
    marketpage = Market();
    chatbotpage = ChatBot();

    pages = [homapage, opdpage, marketpage, chatbotpage];
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
              label: 'ChatBot',
            ),
          ],
          selectedItemColor: Color.fromARGB(255, 22, 88, 196),
          unselectedItemColor: Color.fromARGB(255, 108, 108, 109),
          backgroundColor: Color.fromARGB(255, 240, 243, 248),
          type: BottomNavigationBarType.fixed, // Ensures consistent styling across all items
        ),
      ),
    );
  }
}
