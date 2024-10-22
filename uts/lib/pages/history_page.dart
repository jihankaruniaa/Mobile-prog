import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
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
            'Transaction History',
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
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
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
            'images/his.png',
            height: 200,
          ),
          SizedBox(height: 24),
          Text(
            'All transaction is completed!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Any pending transaction will appear in this page',
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
    final transactions = [
      {
        'title': 'Pay Merchant',
        'amount': 'Rp30.000',
        'date': '21 Okt 2024, 15:10 WIB',
        'status': 'Success',
        'description': 'Warung 369'
      },
      {
        'title': 'Pay Merchant',
        'amount': 'Rp5.000',
        'date': '18 Okt 2024, 12:55 WIB',
        'status': 'Success',
        'description': 'KANTIN TI'
      },
      {
        'title': 'Top Up from Bank',
        'amount': 'Rp100.000',
        'date': '10 Okt 2024, 17:26 WIB',
        'status': 'Success',
        'description': 'Top Up from Bank BCA'
      },
      {
        'title': 'Pay QRIS',
        'amount': 'Rp32.000',
        'date': '27 Sep 2024, 11:49 WIB',
        'status': 'Success',
        'description': 'Mixue Kayutangan Malang'
      },
    ];

    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];

        return Card(
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and Amount Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title
                    Text(
                      transaction['title']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Amount
                    Text(
                      transaction['amount']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                // Date and Status Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Date
                    Text(
                      transaction['date']!,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    // Status
                    Row(
                      children: [
                        Text(
                          transaction['status']!,
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 4),
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                // Divider line between date and description
                Divider(
                  color: Colors.grey[300], // Adjust color if needed
                  thickness: 1, // Adjust thickness if needed
                ),
                SizedBox(height: 8),
                // Description Section
                Text(
                  transaction['description']!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
