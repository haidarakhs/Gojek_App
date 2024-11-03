import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Track the selected index for bottom navigation

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Lontong',
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.green),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                "assets/nw.png", 
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rp100.000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text("0 coins", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Column(
                            children: [
                              Icon(Icons.payments, color: Colors.blue),
                              Text("Bayar"),
                            ],
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Column(
                            children: [
                              Icon(Icons.add, color: Colors.blue),
                              Text("Top Up"),
                            ],
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Column(
                            children: [
                              Icon(Icons.more_horiz, color: Colors.blue),
                              Text("Lainnya"),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  childAspectRatio: 0.8,
                  children: [
                    serviceIcon(Icons.motorcycle, "GoRide", "5RB!"),
                    serviceIcon(Icons.car_rental, "GoCar", "9RB!"),
                    serviceIcon(Icons.restaurant, "GoFood", "B1G1"),
                    serviceIcon(Icons.card_giftcard, "GoSend", "5RB!"),
                    serviceIcon(Icons.shopping_cart, "GoMart", "60%"),
                    serviceIcon(Icons.receipt, "GoTagihan", ""),
                    serviceIcon(Icons.account_balance_wallet, "GopayLater", "100%"),
                    serviceIcon(Icons.more_horiz, "Lainnya", ""),
                  ],
                ),
              ),
             
              Image.asset(
                "assets/banner.png", 
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Pesanan',
          ),
         
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget serviceIcon(IconData icon, String label, String promo) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[200],
              child: Icon(icon, color: Colors.green, size: 30),
            ),
            if (promo.isNotEmpty)
              Positioned(
                top: -2,
                right: -2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    promo,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
