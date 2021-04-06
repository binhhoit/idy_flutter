import 'dart:math';

import 'package:flutter/material.dart';
import 'package:idy/challenge_list.dart';
import 'package:idy/model/ChallengeResponse.dart';
import 'dart:async';
import 'dart:developer';
import 'package:idy/network/network.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<ChallengeResponse>> futureAlbum;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = fetchChallenge();
    futureAlbum.then((value) => print('data: ${value.first.photo}'));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: const Color(0x1a000000),
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'new challenge',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pregnant_woman_outlined),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Profile',
              ),
            ],
          ),
          body: FutureBuilder(future: futureAlbum, builder: (context, item) {
            return ChallengeListWidget(item.data);
          })
        ));
  }
}
