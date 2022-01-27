import 'package:amazeyootest/Screens/moviespage.dart';
import 'package:amazeyootest/widgets/profileheader.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const ProfileHeader(),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: const [
              Material(
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.transparent,
                  labelStyle: TextStyle(
                    fontSize: 14.5,
                    fontFamily: 'Kollektif',
                  ),
                  tabs: [
                    Tab(
                      text: 'Movies',
                    ),
                    Tab(
                      text: 'TV Shows',
                    ),
                    Tab(
                      text: 'Anime',
                    ),
                    Tab(
                      text: 'My List',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    MoviesPage(),
                    Scaffold(
                      body: Center(
                        child: Text('TV Shows'),
                      ),
                    ),
                    Scaffold(
                      body: Center(
                        child: Text('Anime'),
                      ),
                    ),
                    Scaffold(
                      body: Center(
                        child: Text('My List'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
