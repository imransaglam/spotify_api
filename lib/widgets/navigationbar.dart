import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyapi/pages/details.dart';
import 'package:spotifyapi/pages/homescreen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff67C4A7),
          unselectedItemColor: Color(0xff939393),
         
          currentIndex: _currentIndex,
          unselectedLabelStyle: TextStyle(color: Color(0xff939393)),
          
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            
          },
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
              
                },
                icon: Image.asset(
                  "assets/Home2.png",
                ),
                iconSize: 28,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  
                },
                icon: Image.asset(
                  "assets/Discovery.png",
                ),
                 iconSize: 28,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  
                },
                icon: Image.asset(
                  "assets/Heart.png",
                ),
                 iconSize: 28,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                
                },
                icon: Image.asset(
                  "assets/Profile.png",
                ),
                 iconSize: 28,
              ),
              label: "",
            ),
          ]),
    );
  }

  Widget Pages() {
    switch (_currentIndex) {
      case 0:
        return Homescreen();
        break;
      case 1:
        return DetailsScreen();
        break;
      case 2:
        return Homescreen();
        break;
      case 3:
        return Homescreen();
        break;
      default:
        return Container();
    }
  }
}