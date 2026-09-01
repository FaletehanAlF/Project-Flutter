import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
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

      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.orange,
          ),

          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.purple,
          ),

          SalomonBottomBarItem(
            icon: const Icon(Icons.notifications),
            title: const Text("Notifikasi"),
            selectedColor: Colors.red,
          ),

          SalomonBottomBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text("Keranjang"),
            selectedColor: Colors.green,
          ),

          SalomonBottomBarItem(
            icon: const Icon(Icons.receipt_long),
            title: const Text("Pesanan"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}