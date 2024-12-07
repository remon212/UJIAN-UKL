import 'package:flutter/material.dart';
import 'package:cinepolis/models/movie_models.dart';
import 'package:cinepolis/widgets/menu_bottom.dart';

class CinemaView extends StatefulWidget {
  @override
  _CinemaViewState createState() => _CinemaViewState();
}

class _CinemaViewState extends State<CinemaView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: DropdownButton<String>(
          value: 'Malang',
          items: <String>['Malang', 'Jakarta', 'Surabaya'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // Handle perubahan lokasi
          },
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "Movie"),
            Tab(text: "Cinema"),
          ],
        ),
      ),
      body: Column(
        children: [
          // Dropdown dan Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(width: 16),
                // Search bar
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cinema / Movie',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // TabBarView untuk konten Movies dan Cinemas
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                FilmGridView(), // Konten Movies
                CinemaListView(), // Konten Cinemas
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(3),
    );
  }
}

// Komponen untuk daftar Cinema
class CinemaListView extends StatelessWidget {
  final List<Map<String, dynamic>> cinemas = [
    {
      "name": "Malang Town Square",
      "distance": "8.03 km",
      "facilities": "REGULAR • LUXE"
    },
    {
      "name": "Lippo Plaza Batu",
      "distance": "11.23 km",
      "facilities": "REGULAR"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: cinemas.length,
      itemBuilder: (context, index) {
        final cinema = cinemas[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama Cinema
                Text(
                  cinema['name'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                // Jarak Cinema
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      '${cinema['distance']} away',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                // Fasilitas Cinema
                Row(
                  children: [
                    Icon(Icons.movie, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      cinema['facilities'],
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FilmGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(8),
                    ),
                    child: Image.asset(
                      category.poster,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(Icons.favorite_border, color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.nama,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      category.genre,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(
                          '${category.rating}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
