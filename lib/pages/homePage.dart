import 'package:flutter/material.dart';
import 'package:belajar_flutter2/pages/profilePage.dart';
import 'package:belajar_flutter2/pages/notifikasiPage.dart';
import 'package:belajar_flutter2/pages/keranjangPage.dart';
import 'package:belajar_flutter2/pages/pesananPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final nama = data["nama"];
    final umur = data["umur"];

    final List<Widget> pages = [
      Container(
        color: Colors.grey.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/maxverstappen.jpg",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),

              Text("Nama Saya $nama"),

              Text("Umur Saya $umur"),
            ],
          ),
        ),
      ),

      Profilepage(),

      Notifikasipage(),

      Keranjangpage(),

      Pesananpage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),

      body: pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0
                  ? Colors.orange
                  : Colors.grey,
            ),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _currentIndex == 1
                  ? Colors.purple
                  : Colors.grey,
            ),
            label: "Profile",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: _currentIndex == 2
                  ? Colors.red
                  : Colors.grey,
            ),
            label: "Notifikasi",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: _currentIndex == 3
                  ? Colors.green
                  : Colors.grey,
            ),
            label: "Keranjang",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt_long,
              color: _currentIndex == 4
                  ? Colors.teal
                  : Colors.grey,
            ),
            label: "Pesanan",
          ),
        ],
      ),
    );
  }
}