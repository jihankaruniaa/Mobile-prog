import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/history_page.dart';
import '../pages/account_page.dart';
import '../pages/pay_page.dart';
import '../pages/inbox_page.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    HistoryPage(),
    PayPage(),
    InboxPage(),
    AccountPage(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 95,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: _onTap,
          selectedItemColor: Color.fromARGB(255, 205, 34, 51),
          unselectedItemColor: const Color.fromARGB(255, 61, 60, 60),
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items: [
            _buildBottomNavigationBarItem(0, Icons.home_rounded, 'Home'),
            _buildBottomNavigationBarItem(1, Icons.history, 'History'),
            _buildPayButton(),
            _buildBottomNavigationBarItem(3, Icons.inbox, 'Inbox'),
            _buildBottomNavigationBarItem(4, Icons.person, 'Account'),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      int index, IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: InkWell(
        onTap: () => _onTap(index),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          children: [
            Icon(icon),
            Text(label, style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
      label: '',
    );
  }

  BottomNavigationBarItem _buildPayButton() {
    return BottomNavigationBarItem(
      icon: Transform.translate(
        offset: Offset(0, -23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 205, 34, 51),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Icon(Icons.qr_code_scanner, color: Colors.white),
            ),
            SizedBox(height: 2),
            Text('Pay', style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
      label: '',
    );
  }
}
