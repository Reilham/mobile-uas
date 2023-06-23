import 'package:flutter/material.dart';

class startPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(), // Indikator loading
              SizedBox(height: 16), // Jarak antara indikator loading dan gambar
              Image.asset("assets/Logo.png"), // Gambar loading
              SizedBox(height: 16), // Jarak antara gambar dan teks
              Text(
                "Loading...",
                style: TextStyle(fontSize: 18),
              ), // Teks loading
            ],
          ),
        ),
      ),
    );
  }
}
