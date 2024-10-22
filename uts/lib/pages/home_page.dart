import 'package:flutter/material.dart';
import 'dart:async';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 80.0,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/logo_linkaja.png',
                      width: 40,
                      height: 40,
                    ),
                    Row(
                      children: [
                        _buildIconContainer(Icons.favorite_outline, () {}),
                        SizedBox(width: 10),
                        _buildIconContainer(Icons.support_agent, () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 205, 34, 51),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, JIHAN KARUNIA PUTRI",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildBalanceCard("Your Balance",
                                    "Rp *********", Icons.arrow_circle_right),
                                SizedBox(width: 16),
                                _buildBalanceCard("Bonus Balance", "Rp 0",
                                    Icons.arrow_circle_right,
                                    isBonus: true),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 3,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildQuickActionButton(Icons.add, "TopUp"),
                            _buildQuickActionButton(Icons.remove, "CashOut"),
                            _buildQuickActionButton(Icons.send, "Send Money"),
                            _buildQuickActionButton(
                                Icons.widgets_outlined, "See All"),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 2,
                        children: [
                          _buildServiceIcon(Icons.phone_android, "Pulsa/Data"),
                          _buildServiceIcon(Icons.flash_on, "Electricity"),
                          _buildServiceIcon(Icons.tv, "Cable TV & Internet"),
                          _buildServiceIcon(Icons.credit_card, "Cardless"),
                          _buildServiceIcon(Icons.mosque, "Masjid"),
                          _buildServiceIcon(Icons.volunteer_activism, "Infaq"),
                          _buildServiceIcon(
                              Icons.favorite_border, "Other Donations"),
                          _buildServiceIcon(Icons.more_horiz, "More"),
                        ],
                      ),
                      _buildSwipeableBanner(),
                      _buildStyledBannerAd(),
                      _buildStyledBannerAd2(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildIconContainer(IconData icon, VoidCallback onPressed) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
      ],
    ),
    padding: EdgeInsets.all(4.0),
    child: IconButton(
      icon: Icon(icon, color: Colors.black, size: 24),
      onPressed: onPressed,
    ),
  );
}

Widget _buildBalanceCard(String label, String amount, IconData icon,
    {bool isBonus = false}) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(color: Colors.black)),
              Text(
                amount,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          Icon(icon, color: isBonus ? Colors.yellow : Colors.red),
        ],
      ),
    ),
  );
}

Widget _buildQuickActionButton(IconData icon, String label) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Color.fromARGB(255, 205, 34, 51),
        child: Icon(icon, color: Colors.white),
      ),
      SizedBox(height: 8),
      Text(label, style: TextStyle(fontSize: 12)),
    ],
  );
}

Widget _buildServiceIcon(IconData icon, String label) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Color.fromARGB(255, 205, 34, 51),
        child: Icon(icon, color: Colors.white),
      ),
      SizedBox(height: 8),
      Text(label, style: TextStyle(fontSize: 12)),
    ],
  );
}

Widget _buildSwipeableBanner() {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  Timer.periodic(Duration(seconds: 2), (Timer timer) {
    if (_currentPage < 5) {
      _currentPage++;
    } else {
      _currentPage = 0;
    }
    _pageController.animateToPage(
      _currentPage,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  });

  return Container(
    margin: EdgeInsets.only(top: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: AspectRatio(
      aspectRatio: 900 / 400,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _buildBannerImage('images/${index + 1}.jpg'),
          );
        },
      ),
    ),
  );
}

Widget _buildBannerImage(String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Image.asset(
      imagePath,
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  );
}

Widget _buildStyledBannerAd() {
  return Container(
    margin: EdgeInsets.only(top: 16),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best Deals",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            TextButton(
              onPressed: () {
                // Aksi ketika "See All" ditekan
              },
              child: Text(
                "See All",
                style: TextStyle(
                  color: Color.fromARGB(255, 205, 34, 51),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildBannerItem(
                imagePath: 'images/BD1.jpg',
                title: 'Ajukan Pinjaman via LinkAja Dengan Mudah',
                caption:
                    'Ajukan pinjaman atau pakai paylater dulu aja, pastinya lebih mudah di LinkAja!',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/BD2.jpg',
                title: 'Main Turnamen Mgames & ada hadiah menarik!',
                caption:
                    'Semakin banyak ikut reguler dengan banyak token, semakin besar hadiah!',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/BD3.jpg',
                title: 'Cash Out - Tarik Tunai Bank Syariah Indonesia',
                caption:
                    'Tarik tunai LinkAja Syariah tanpa kartu bisa menggunakan via ATM BSI loh!',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/BD4.jpg',
                title: 'Edukasi Klik Indomaret Dengan LinkAja',
                caption:
                    'Cara Belanja Klik Indomaret Pakai LinkAja dari Aplikasi Klik Indomaret',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildStyledBannerAd2() {
  return Container(
    margin: EdgeInsets.only(top: 16),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Latest Updates",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildBannerItem(
                imagePath: 'images/BD1.jpg',
                title: 'Ajukan Pinjaman via LinkAja Dengan Mudah',
                caption:
                    'Ajukan pinjaman atau pakai paylater dulu aja, pastinya lebih mudah di LinkAja!',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/BD2.jpg',
                title: 'Main Turnamen Mgames & ada hadiah menarik!',
                caption:
                    'Semakin banyak ikut reguler dengan banyak token, semakin besar hadiah!',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/BD3.jpg',
                title: 'Cash Out - Tarik Tunai Bank Syariah Indonesia',
                caption:
                    'Tarik tunai LinkAja Syariah tanpa kartu bisa menggunakan via ATM BSI loh!',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/BD4.jpg',
                title: 'Edukasi Klik Indomaret Dengan LinkAja',
                caption:
                    'Cara Belanja Klik Indomaret Pakai LinkAja dari Aplikasi Klik Indomaret',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildBannerItem({
  required String imagePath,
  required String title,
  required String caption,
}) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 150,
            width: double.infinity,
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                caption,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
