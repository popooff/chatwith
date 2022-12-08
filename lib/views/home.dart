import 'package:chatwith/views/pages/favorite_screen.dart';
import 'package:chatwith/views/pages/request_screen.dart';
import 'package:chatwith/views/pages/home_screen.dart';

import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'CHAT'),
              Tab(text: 'FAVORITE'),
              Tab(text: 'REQUEST'),
            ]),
          elevation: 0,
          title: const Text(
            'Chatwith',
            style: TextStyle(
              fontSize: 24,
              letterSpacing: 1.2,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
            splashRadius: 24,
            onPressed: () {

            },
          ),
          actions: [
            IconButton(
              onPressed: () {

              },
              splashRadius: 24,
              icon: const Icon(
                Icons.person_add,
                size: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(width: 6),

            IconButton(
              onPressed: () {

              },
              splashRadius: 24,
              icon: const Icon(
                Icons.search,
                size: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(width: 6)
          ]),
        body: const TabBarView(
          children: [
            HomeScreen(),
            FavoriteScreen(),
            RequestScreen()
          ]),
      ),
    );
  }
}
