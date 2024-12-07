import 'package:flutter/material.dart';
import 'package:cinepolis/views/cinema_screen.dart';
import 'package:cinepolis/views/home_screen.dart';
import 'package:cinepolis/views/login_view.dart';
import 'package:cinepolis/views/splash_screen.dart';
import 'package:cinepolis/views/movie_screen.dart';
import 'package:cinepolis/views/mybooking_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root widget of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/s',
        routes: {
          '/s': (_) => SplashScreen(),
          '/l': (_) => LoginView(),
          '/h': (_) => HomeView(),
          '/a': (_) => BookingView(),
          '/t': (_) => MovieView(),
          '/c': (_) => CinemaView(),
        });
  }
}
