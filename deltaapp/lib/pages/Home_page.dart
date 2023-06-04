import 'package:deltaapp/pages/First_tab.dart';
import 'package:deltaapp/pages/second_tab.dart';
import 'package:deltaapp/pages/tab_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Nav_bar.dart';
import 'Third_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            title: const Align(
              alignment: Alignment.center,
              child: Text(
                'delta',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 10,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ],
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    'Overview',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    'Crypto',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    'Stocks',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          // body:
          // bottomNavigationBar: NavBar(),
          // body: Expanded(
          //   child: Container(
          //     child: Text(
          //       'he',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
          // bottomNavigationBar: NavBar(),
          body: Container(
            child: TabBarView(
              children: [
                Tab1(),
                SecondTab(),
                Thirdtab(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            iconSize: 28,
            onTap: (value) {
              // Respond to item press.
              setState(() => _currentIndex = value);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
