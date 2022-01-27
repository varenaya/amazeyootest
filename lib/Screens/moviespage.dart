import 'package:amazeyootest/Screens/Infoscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  int _current = 1;
  final CarouselController _carouselcontroller = CarouselController();

  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOQ4XR107QOwKswcQWa2zti9K87jPtX0Jjr2_UaQGGarNxanwsGBRuePsQmhm4Jdj3slI&usqp=CAU',
    'https://cdn.cardsrealm.com/images/uploads/1636303098.jpeg?&width=720',
    'https://m.media-amazon.com/images/I/91JVnIgy2HL._SL1500_.jpg',
  ];

  List recentwatched = [
    'https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/product_image_aspect_switcher_170w/public/product-images/csm-movie/captain-marvel-movie-poster-image0.jpg?itok=mYCuVYl8',
    'https://i.pinimg.com/736x/11/49/cf/1149cf80aabbd9c11924b29eefcceb47.jpg',
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e757546e-5f14-44bc-ae01-786684cff7ed/d5uu819-3e10f984-d069-49af-85ae-87b633494260.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2U3NTc1NDZlLTVmMTQtNDRiYy1hZTAxLTc4NjY4NGNmZjdlZFwvZDV1dTgxOS0zZTEwZjk4NC1kMDY5LTQ5YWYtODVhZS04N2I2MzM0OTQyNjAuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TpVhIU_iB1oXsvrOjh4e-lWXr1tKM8HbM8Fq4kd8olE',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCNirCYPWdbDMPkM9ACasKhrlFvxV4MDjBV7BAplB7p9JZKNwMpGPStj7QKUzPL8Hrqzo&usqp=CAU',
  ];

  List favorites = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCNirCYPWdbDMPkM9ACasKhrlFvxV4MDjBV7BAplB7p9JZKNwMpGPStj7QKUzPL8Hrqzo&usqp=CAU',
    'https://m.media-amazon.com/images/M/MV5BMTQzYWYwYjctY2JhZS00NTYzLTllM2UtZWY5ZTk0NmYwYzIyXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BN2FjNmEyNWMtYzM0ZS00NjIyLTg5YzYtYThlMGVjNzE1OGViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg',
    'https://terrigen-cdn-dev.marvel.com/content/prod/1x/snh_online_6072x9000_posed_01.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CarouselSlider(
                    carouselController: _carouselcontroller,
                    items: images.map((e) {
                      return GestureDetector(
                        onTap: () {
                          pushNewScreen(
                            context,
                            screen: const InfoScreen(),
                            withNavBar: true,
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        child: _current == images.indexOf(e)
                            ? SizedBox(
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 0,
                                      left: 40,
                                      child: Container(
                                        height: 180,
                                        width: 185,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 0.75)),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 20,
                                      child: Container(
                                        height: 190,
                                        width: 190,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10.0)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                e,
                                              ),
                                              fit: BoxFit.fill,
                                            )),
                                      ),
                                    ),
                                    Positioned(
                                      right: 85,
                                      bottom: 74,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.white)),
                                      ),
                                    ),
                                    Positioned(
                                      right: 90,
                                      bottom: 80,
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: const LinearGradient(
                                                  colors: [
                                                    Colors.white,
                                                    Color.fromRGBO(
                                                        155, 113, 63, 1),
                                                  ],
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.center)),
                                          child: const Icon(
                                            Icons.play_arrow_outlined,
                                            size: 26,
                                          )),
                                    )
                                  ],
                                ),
                              )
                            : ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                                child: Image.network(
                                  e,
                                  fit: BoxFit.fill,
                                )),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      viewportFraction: 0.6,
                      initialPage: 1,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    )),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Episode 1',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const Text(
                  'Pow Pow',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: images.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _carouselcontroller.animateToPage(entry.key),
                      child: Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == entry.key
                                ? Colors.white
                                : Colors.grey.shade600),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Recent Watched',
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
                          itemCount: recentwatched.length,
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
                                        recentwatched[index],
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
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
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
          ],
        ),
      ),
    );
  }
}
