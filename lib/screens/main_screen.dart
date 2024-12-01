import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_app/custom_widgets/Tabs.dart';
import 'package:info_app/screens/detail_screen.dart';
import 'package:info_app/model/place_data.dart';
import 'package:info_app/repository/repository.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Repository repository = Repository();

  List<PlaceData> places = [];

  void onClickPlace({required PlaceData clickedPlace}) {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => DetailScreen(
                  selectedPlace: clickedPlace,
                )));
  }

  @override
  void initState() {
    super.initState();
    places = repository.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff031F2B),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 56.0),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Sayohat',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 23),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xff263238),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      size: 24,
                      Icons.search, // Shu yerda kerakli ikonkani belgilang
                      color: Color(0xffd6d2d2),
                    ),
                    border: InputBorder.none,
                    hintText: "Buxoro",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Color(0xffA5A5A5)),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24.0, bottom: 12),
            child: SizedBox(
                height: 40,
                child: Tabs(tabs: [
                  'Barchasi',
                  "Tog'",
                  "Dacha",
                  "Shahar",
                  "Zamonaviy"
                ])),
          ),
          Expanded(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24.0, bottom: 16),
                  child: Text(
                    'Mashxur joylar',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                /* Horizontal recyclerView */
                SizedBox(
                  height: 182,
                  child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            onClickPlace(clickedPlace: places[index]);
                          },
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            width: 124,
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(places[index].imgAsset),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                    Colors.black54,
                                    Colors.transparent
                                  ]),),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      places[index].title,
                                      style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.white)),
                                  Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      places[index].location,
                                      style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 12,
                        );
                      },
                      itemCount: places.length),
                ),
                /*Title named like: "Barchasi" */
                const Padding(
                  padding: EdgeInsets.only(left: 24.0, bottom: 16, top: 40),
                  child: Text(
                    'Barchasi',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                /* Vertical RecyclerView */
                ListView.separated(
                    padding: const EdgeInsets.only(bottom: 24),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: InkWell(
                          onTap: () {
                            onClickPlace(clickedPlace: places[index]);
                          },
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(places[index].imgAsset),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                    Colors.black54,
                                    Colors.transparent
                                  ])),
                              child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 16,
                                      left: 16,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            places[index].title,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            places[index].location,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 16,
                                      right: 16,
                                      child: Row(
                                        children: [
                                          Text(places[index].star.toString(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16)),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          SvgPicture.asset(
                                            'assets/images/fiveStar.svg',
                                            width: 15.28,
                                            height: 14.18,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 12);
                    },
                    itemCount: places.length)
              ],
            ),
          )
        ],
      ),
    );
  }
}

/* ListView.separated
ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {},
                      child: Container(
                        color: Colors.blue,
                        child: Text('qwertyuiop'),
                      ));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 8);
                },
                itemCount: 4),
 */
