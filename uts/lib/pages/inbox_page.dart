import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 241, 246),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Inbox',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color.fromARGB(255, 205, 34, 51),
            indicatorSize: TabBarIndicatorSize.tab,
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            tabs: [
              Tab(text: 'Notification'),
              Tab(text: 'Updates'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Pending Transactions
            buildPendingTab(),

            // Done Transactions
            buildDoneTab(),
          ],
        ),
      ),
    );
  }

  Widget buildPendingTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/inbox.png',
            height: 200,
          ),
          SizedBox(height: 24),
          Text(
            'No Messages Yet',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Dont worry, you'll be the first one to know if there is only messages sent for you",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildDoneTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/inbox.png',
            height: 200,
          ),
          SizedBox(height: 24),
          Text(
            'No Messages Yet',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Dont worry, you'll be the first one to know if there is only messages sent for you",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
