import 'package:flutter/material.dart';
import 'package:project_good_doctor/screens/profile.dart';
import '../utils/navigation_bar.dart';
import 'analysis.dart';
import 'history.dart';
import 'home.dart';

class MyGoodDoctorApp extends StatefulWidget {
  const MyGoodDoctorApp({super.key});

  @override
  State<MyGoodDoctorApp> createState() => _MyGoodDoctorAppState();
}

class _MyGoodDoctorAppState extends State<MyGoodDoctorApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const HistoryPage(),
    const AnalysisPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.monitor_heart,
              color: Colors.redAccent,
            ),
            SizedBox(width: 8),
            Text(
              'AI Good Doctor',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        elevation: 4,
        backgroundColor: Colors.white,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
