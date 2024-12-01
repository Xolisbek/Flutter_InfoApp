import 'package:flutter/material.dart';
import 'package:info_app/model/place_data.dart';

class DetailScreen extends StatelessWidget {
  final PlaceData selectedPlace;

  const DetailScreen({super.key, required this.selectedPlace});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff031F2B),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xff031F2B),
            collapsedHeight: 60,
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0x4D000000),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    )),
              ),
            ),
            expandedHeight: 350,
            pinned: true,
            flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              // SliverAppBar holatini aniqlash uchun yuqori balandlikdan foydalanamiz
              final double appBarHeight = constraints.biggest.height;
              final bool isCollapsed = appBarHeight <= 160;

              return FlexibleSpaceBar(
                expandedTitleScale: 1.5,
                centerTitle: isCollapsed,
                // Sarlavha markazda yoki chapda bo'lishi
                title: AnimatedAlign(
                  duration: const Duration(milliseconds: 300),
                  alignment: isCollapsed
                      ? Alignment.bottomCenter
                      : Alignment.bottomLeft,
                  child: Text(
                    selectedPlace.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                background: Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(selectedPlace.imgAsset),
                              fit: BoxFit.cover),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                              bottomRight: Radius.circular(36))),
                      child: Container(
                        height: 80,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xcc000000), Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                                bottomRight: Radius.circular(36))),
                      ),
                    ),
                  ],
                ),
                titlePadding: isCollapsed
                    ? null
                    : const EdgeInsets.only(left: 24, bottom: 24),
                collapseMode: CollapseMode.pin,
              );
            }),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Batafsil',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 36.0),
                    child: Text(
                      selectedPlace.description,
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffD6D2D2)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
