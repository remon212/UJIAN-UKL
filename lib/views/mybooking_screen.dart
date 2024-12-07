import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:cinepolis/models/movie_models.dart';

import 'package:cinepolis/widgets/menu_bottom.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: sw * 0.05, top: sw * 0.01),
            child: Text(
              "My Booking",
              style:
                  TextStyle(fontSize: sw * 0.06, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: List.generate(
              categories.length,
              (index) => GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(top: sw * 0.05),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.only(
                      left: sw * 0.05,
                    ),
                    width: sw * 0.98,
                    height: sw * 0.2,
                    child: Row(
                      children: [
                        Container(
                            width: sw * 0.5,
                            height: sw * 0.2,
                            padding: EdgeInsets.only(right: sw * 0.05),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  categories[index].banner,
                                  width: sw * 0.1,
                                  fit: BoxFit.contain,
                                ))),
                        Center(
                          child: Column(children: [
                            Text(
                              categories[index].nama,
                              style: TextStyle(
                                  fontSize: sw * 0.03,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  categories[index].genre,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 16),
                                    SizedBox(width: 4),
                                    Text(
                                      '${categories[index].rating}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Navbar(1),
    );
  }
}
