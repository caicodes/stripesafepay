import 'package:flutter/material.dart';

class BottomNavigationBarMain extends StatelessWidget {
  const BottomNavigationBarMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list_outlined),
          label: 'All Trips',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outline),
          label: 'Bookmarked',
        ),
      ],
      // currentIndex: _selectedIndex,
      // selectedItemColor: colorPrimary,
      // onTap: () {},
    );
  }
}

/**
 *   bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'All Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'Bookmarked',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: colorPrimary,
        onTap: _onBottomNavBarItemTapped,
      ),
 */