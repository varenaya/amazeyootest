// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  List favorites = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCNirCYPWdbDMPkM9ACasKhrlFvxV4MDjBV7BAplB7p9JZKNwMpGPStj7QKUzPL8Hrqzo&usqp=CAU',
    'https://m.media-amazon.com/images/M/MV5BMTQzYWYwYjctY2JhZS00NTYzLTllM2UtZWY5ZTk0NmYwYzIyXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BN2FjNmEyNWMtYzM0ZS00NjIyLTg5YzYtYThlMGVjNzE1OGViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg',
    'https://terrigen-cdn-dev.marvel.com/content/prod/1x/snh_online_6072x9000_posed_01.jpg',
  ];
  List cast = [
    'https://ichef.bbci.co.uk/news/976/cpsprodpb/13248/production/_121780487_mel.jpg',
    'https://i.pinimg.com/originals/a6/5f/11/a65f11e54b013ac583bb16b30dc45b3b.jpg',
    'https://www.pcgamesn.com/wp-content/uploads/2022/01/fortnite-lol-arcane-skin.jpg',
    'https://assets.3dtotal.com/111.sgee7p.expanded.nxr.jpg',
    'https://i.pinimg.com/474x/25/05/6a/25056adc1178c436437713d7444ba8a0.jpg',
    'https://static.wikia.nocookie.net/leagueoflegends/images/0/06/Silco_Render.png/revision/latest?cb=20211122033830',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: const SizedBox(),
                pinned: true,
                floating: true,
                stretch: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                expandedHeight: size.height * 0.65,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    'https://images.wallpapersden.com/image/download/arcane-4k-netflix-poster_bWVrbWiUmZqaraWkpJRnZW1trWdnamU.jpg',
                    fit: BoxFit.cover,
                  ),
                  centerTitle: true,
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'New  .  Season 1',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white60,
                        ),
                      ),
                      const Text(
                        'Arcane',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: const Center(
                              child: Text(
                                '12+',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white38,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 25,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: const Center(
                              child: Text(
                                'League of Legend',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white38,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 25,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: const Center(
                              child: Text(
                                'Netflix',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white38,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('S1 : E1 "Episode 1: Jinx Born"'),
                          Text('45 min'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white30),
                          ),
                          Container(
                            height: 4,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Color.fromRGBO(155, 113, 63, 1),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.center),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 62,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 18,
                              top: 17,
                              child: Container(
                                height: 45,
                                width: size.width * 0.78,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.white, width: 0.75)),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Color.fromRGBO(155, 113, 63, 1),
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.center)),
                                  height: 50,
                                  width: size.width * 0.8,
                                  child: const Center(
                                    child: Text(
                                      'Continue Watch',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'The Cast',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'See all',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.1,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: cast.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0)),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              cast[index],
                                            ),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'My Favorites',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'See all',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.25,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: favorites.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0)),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              favorites[index],
                                            ),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 26,
            left: 15,
            child: Card(
              elevation: 5,
              color: Colors.white.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const SizedBox(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 26,
            right: 15,
            child: Card(
              elevation: 5,
              color: Colors.white.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () {},
                child: const SizedBox(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.av_timer,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
