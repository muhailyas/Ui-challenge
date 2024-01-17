import 'package:carousel_slider/carousel_slider.dart';
import 'package:day1/constants/constants.dart';
import 'package:day1/pages/categories/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: CustomScrollView(
          slivers: [
            _buildSliverAppBar(),
            _buildPopularEventsSection(),
            _buildExploreCategoriesSection(),
            _buildRecentlyViewedEventsSection(),
          ],
        ),
      ),
    );
  }

  SliverAppBar _buildSliverAppBar() {
    return SliverAppBar(
      collapsedHeight: Constants.height * 0.13,
      pinned: true,
      flexibleSpace: _buildAppBarContent(),
    );
  }

  Widget _buildAppBarContent() {
    return FlexibleSpaceBar(
      background: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(Constants.imageUrl),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: Constants.height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    Container(
                      height: Constants.height * 0.035,
                      width: Constants.height * 0.035,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Ernakulam",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.white),
                    const Spacer(),
                    const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: Constants.height * 0.05,
                width: Constants.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Text(
                        "What do you feel like doing?",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularEventsSection() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Popular Events",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: Constants.height * 0.19,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(items2[index][3]),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 25,
                          bottom: 62,
                          child: Material(
                            color: Colors.white,
                            elevation: 2,
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              height: 40,
                              width: 40,
                              child: const Icon(Icons.star_outline),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items2[index][4],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                items2[index][0],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                items2[index][1],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              aspectRatio: 14 / 9,
              viewportFraction: 0.9,
              enlargeFactor: 0.15,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.linear,
            ),
          ),
        ],
      ),
    );
  }

  SliverList _buildExploreCategoriesSection() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Explore Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
              ],
            ),
          ),
          SizedBox(
            height: Constants.height * 0.13,
            width: Constants.width,
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 10 : 0,
                      right: index == items.length - 1 ? 10 : 0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          splashFactory: NoSplash.splashFactory,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            index == items.length - 1
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ScreenCategories(),
                                    ),
                                  )
                                : null;
                          },
                          child: Container(
                            height: Constants.height * 0.1,
                            width: Constants.height * 0.1,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(items[index][1]),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: index != items.length - 1
                                ? null
                                : const Center(
                                    child: Text(
                                      "+22",
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                        Text(items[index][0]),
                      ],
                    ),
                  );
                },
                itemCount: items.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentlyViewedEventsSection() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SizedBox(height: Constants.height * 0.02),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Recently Viewed Events",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: Constants.height * 0.02),
          ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: SizedBox(
                    height: Constants.height * 0.12,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: Constants.height * 0.12,
                          width: Constants.width * 0.38,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(items2[index][3])),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        SizedBox(width: Constants.width * 0.03),
                        SizedBox(
                          width: Constants.width * 0.5,
                          height: Constants.height * 0.12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items2[index][0],
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: Constants.height * 0.01),
                              Text(
                                items2[index][1],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: Constants.height * 0.01),
                              Text(
                                items2[index][2],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 4),
        ],
      ),
    );
  }
}
