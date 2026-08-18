import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  const Homepage({super.key,});

  @override
  Widget build(BuildContext context) {
    final data  = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final nama = data ["nama"];
    final umur = data ["umur"];
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Nama Saya $nama"),
          Text("Umur Saya $umur"),
        ],
      ),
    );
  }
}