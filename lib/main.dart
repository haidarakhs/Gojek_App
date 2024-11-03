import 'package:app_laundry/splash_screen.dart';
import 'package:device_preview/device_preview.dart'; // Tambahkan impor ini
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Aktifkan Device Preview
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder, 
      home: SplashScreen(),
    );
  }
}
