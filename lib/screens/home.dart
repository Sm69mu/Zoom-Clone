import 'package:flutter/material.dart';
import 'package:Chatty/screens/contacts_screen.dart';
import 'package:Chatty/screens/history_screen.dart';
import 'package:Chatty/screens/home_screen.dart';
import 'package:Chatty/screens/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pages = [
      const HomeScreen(),
      const ContactsScreen(),
      const HistoryScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
      
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline),
            label: "Chat",
          ),
          NavigationDestination(
            icon: Icon(Icons.contacts_outlined),
            label: "Contacts",
          ),
          NavigationDestination(
            icon: Icon(Icons.history_rounded),
            label: "History",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_4_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
