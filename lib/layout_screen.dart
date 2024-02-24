import 'package:desamas/screens/akun_screen.dart';
import 'package:desamas/screens/beranda_screen.dart';
import 'package:desamas/screens/chat_screen.dart';
import 'package:desamas/screens/riwayat_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const BerandaScreen(),
    RiwayatScreen(),
    // Test(),
    ChatScreen(),
    const AkunScreen(),
  ];

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: GNav(
            selectedIndex: _currentIndex,
            onTabChange: onBarTapped,
            activeColor: const Color.fromRGBO(31, 175, 176, 1),
            color: Colors.grey,
            iconSize: 32,
            textStyle: const TextStyle(
              color: Color.fromRGBO(31, 175, 176, 1),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            tabBackgroundColor: Colors.grey.shade300,
            padding: const EdgeInsets.all(15),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Beranda',
              ),
              GButton(
                icon: Icons.assignment,
                text: 'Riwayat',
              ),
              GButton(
                icon: Icons.mail,
                text: 'Pesan',
              ),
              GButton(
                icon: Icons.person,
                text: 'Akun',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
