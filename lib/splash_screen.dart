import 'package:app_laundry/home_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gojek",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/splash.png"),
            const Text(
              "Selamat datang di Gojek",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Aplikasi yang buat hidupmu lebih nyaman.\nSiap bantu kebutuhanmu, kapan, di mana pun.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Color(0xFF999999)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "Masuk",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
                backgroundColor: Color(0xFF378611),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Belum ada akun? Daftar Dulu",
                style: TextStyle(color: Color(0xFF048B13)),
              ),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 75, vertical: 15),
                backgroundColor: Colors.white,
                side: BorderSide(color: Color(0xFF048B13)),
              ),
            ),
           const SizedBox(height: 10,),
           const Text("Dengan masuk atau mendaftar, kamu menyetujui ketentuan , Layanan dan kebijakan Privasi.", textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
