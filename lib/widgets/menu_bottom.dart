import "package:flutter/material.dart";

class Navbar extends StatefulWidget {
  int activePage;
  Navbar(this.activePage);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  void getLink(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/h');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/a');
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/t');
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/c');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.grey,
        elevation: 5,
        iconSize: 32,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black45,
        currentIndex: widget.activePage,
        onTap: getLink,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.person),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.payment_sharp),
            label: 'Movie',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home_work_rounded),
            label: 'Cinema',
          ),
        ]);
  }
}
