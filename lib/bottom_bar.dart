import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/home/home_screen.dart';
import 'package:bansosku/pages/informasi/informasi_screen.dart';
import 'package:bansosku/pages/maps/maps_screen.dart';
import 'package:bansosku/pages/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;

  List<Widget> listPage = [
    const HomeScreen(),
    const MapsScreen(),
    const InformarsiScreen(),
    const ProfileScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Informasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Saya',
          ),
        ],
        currentIndex: _page,
        elevation: 4,
        selectedItemColor: MyColors.primaryGreen,
        onTap: updatePage,
      ),
    );
  }
}
