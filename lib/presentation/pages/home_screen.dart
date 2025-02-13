import 'package:flutter/material.dart';
import 'package:toyota/presentation/pages/dashboard_screen.dart';
import 'package:toyota/presentation/pages/odometer_screen.dart';
import 'package:toyota/presentation/pages/vehicle_info_screen.dart';

import '../custom_widgets/gradient_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(
      title: 'LAUNCH PAD',
    ),
    VehicleInfoScreen(
      title: 'VEHICLE INFO',
    ),
    OdometerScreen(
      title: 'ODOMETER',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GradientIcon(
              icon: Icons.home,
              selected: _selectedIndex == 0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GradientIcon(
              icon: Icons.directions_car,
              selected: _selectedIndex == 1,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GradientIcon(
              icon: Icons.speed,
              selected: _selectedIndex == 2,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
