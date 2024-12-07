import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:cinepolis/models/movie_models.dart';
import 'package:cinepolis/models/spotlight_models.dart';
import 'package:cinepolis/views/login_view.dart';
import 'package:cinepolis/widgets/menu_bottom.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: sw * 0.0001),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // searchField(),

              DropdownButton<String>(
                value: 'Malang',
                items: <String>['Malang', 'Jakarta', 'Surabaya']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // Handle perubahan lokasi
                },
              ),

              Container(
                width: 40,
                height: 45,
                child: Icon(
                  Icons.heart_broken,
                  color: Color.fromRGBO(10, 13, 78, 1),
                ),
              ),
              Container(
                width: 40,
                height: 45,
                child: Icon(
                  Icons.person_rounded,
                  color: Color.fromRGBO(10, 13, 78, 1),
                ),
              ),
              Container(
                width: 40,
                height: 45,
                child: Icon(
                  Icons.notifications,
                  color: Color.fromRGBO(10, 13, 78, 1),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
                  child: Text(
                    "Hello,",
                    style: TextStyle(
                        fontSize: sw * 0.06, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: sw * 0.01),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      " Guest",
                      style: TextStyle(
                        fontSize: sw * 0.06,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
            child: Text(
              "Kamu mau nonton apa hari ini?",
              style: TextStyle(
                fontSize: sw * 0.04,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: sw * 0.05),
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 0.4,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 1,
                    autoPlayInterval: Duration(seconds: 4)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final Category = categories[index];
                  //             return GestureDetector(
                  // onTap: () {
                  //   // Navigasi ke halaman lain
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DetailPage(category: category),
                  //     ),
                  //   );
                  // },

                  return Container(
                    width: sw * 1,
                    padding: EdgeInsets.only(left: sw * 0.01, right: sw * 0.01),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Membuat sudut melengkung
                      child: Image.asset(
                        Category.banner,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
                  child: Text(
                    "Now Showing",
                    style: TextStyle(
                        fontSize: sw * 0.06, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: sw * 0.35, top: sw * 0.01),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sea All",
                      style: TextStyle(
                          fontSize: sw * 0.04, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: sw * 0.05),
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 1,
                    autoPlay: true,
                    viewportFraction: 0.7,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 8)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final Category = categories[index];
                  //             return GestureDetector(
                  // onTap: () {
                  //   // Navigasi ke halaman lain
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DetailPage(category: category),
                  //     ),
                  //   );
                  // },

                  return Container(
                    child: Column(
                      children: [
                        Container(
                          width: sw * 0.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Membuat sudut melengkung
                            child: Image.asset(
                              Category.poster,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
                  child: Text(
                    "Up Coming",
                    style: TextStyle(
                        fontSize: sw * 0.06, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: sw * 0.35, top: sw * 0.01),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sea All",
                      style: TextStyle(
                          fontSize: sw * 0.04, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: sw * 0.05),
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 1,
                    autoPlay: true,
                    viewportFraction: 0.65,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 8)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final Category = categories[index];
                  //             return GestureDetector(
                  // onTap: () {
                  //   // Navigasi ke halaman lain
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DetailPage(category: category),
                  //     ),
                  //   );
                  // },

                  return Container(
                    child: Column(
                      children: [
                        Container(
                          width: sw * 0.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Membuat sudut melengkung
                            child: Image.asset(
                              Category.poster,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.03),
            child: Text(
              "Promotion",
              style:
                  TextStyle(fontSize: sw * 0.05, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
            child: Text(
              "Berita hiburan terhangat untuk anda!",
              style: TextStyle(fontSize: sw * 0.03),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // Warna border
                  width: 2, // Lebar border
                ),
              ),
            ),
            padding: EdgeInsets.only(top: sw * 0.02, bottom: sw * 0.02),
            child: Center(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: sw * 0.5,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.9,
                    autoPlayInterval: Duration(seconds: 10)),
                itemCount: categories.length,
                itemBuilder: (context, index, realIndex) {
                  final spotlight = spot[index];
                  //             return GestureDetector(
                  // onTap: () {
                  //   // Navigasi ke halaman lain
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => DetailPage(category: category),
                  //     ),
                  //   );
                  // },

                  return Column(
                    children: [
                      Container(
                        width: sw * 1,
                        padding:
                            EdgeInsets.only(left: sw * 0.01, right: sw * 0.01),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10), // Membuat sudut melengkung
                          child: Image.asset(
                            spotlight.banner,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: sw * 0.02),
                        width: sw * 0.6,
                        child: Text(
                          spotlight.judul,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: sw * 0.040,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(0),
    );
  }
}
