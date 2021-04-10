import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/view_models/post_model.dart';
import 'package:talawa_sample_ui/app_theme.dart';

import 'package:talawa_sample_ui/views/pages/newsfeed/news_feed_list_item.dart';
import 'package:talawa_sample_ui/views/widgets/tab_header.dart';

class NewsFeedPage extends StatefulWidget {
  @override
  _NewsFeedPageState createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {
  List pinnedPostSlider = [
    "assets/images/feed0.jpg",
    "assets/images/feed1.jpg",
    "assets/images/feed2.jpg",
  ];

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: TalawaTheme.buildLightTheme(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: TalawaTheme.buildLightTheme().backgroundColor,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: Text(
            'News-Feed',
            style: TextStyle(
                color: Colors.black87, fontFamily: 'CM', fontSize: 22),
          ),
          actions: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: NestedScrollView(
                      controller: _scrollController,
                      headerSliverBuilder:
                          (BuildContext context, bool innerBoxIsScrolled) {
                        return <Widget>[
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Pinned Posts',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "CM",
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CarouselSlider(
                                    options: CarouselOptions(
                                      enlargeCenterPage: true,
                                      autoPlay: true,
                                    ),
                                    items: pinnedPostSlider.map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: AssetImage(i),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  color: Colors.black54,
                                                  borderRadius:
                                                      new BorderRadius.all(
                                                    new Radius.circular(20),
                                                  ),
                                                ),
                                                padding: EdgeInsets.all(8),
                                                child: Column(
                                                  children: <Widget>[
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 22,
                                                          backgroundColor:
                                                              TalawaTheme
                                                                  .secondaryColor1,
                                                          child: CircleAvatar(
                                                            child: ClipOval(
                                                              child: Image(
                                                                height: 70.0,
                                                                width: 70.0,
                                                                image:
                                                                    AssetImage(
                                                                  'assets/images/user0.png',
                                                                ),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Text(
                                                        i == "assets/images/feed0.jpg"
                                                            ? "Beast Titan"
                                                            : i == "assets/images/feed1.jpg"
                                                                ? "KillMonger"
                                                                : "Gaitonde",
                                                        style: TextStyle(
                                                          fontFamily: "CM",
                                                          fontSize: 22,
                                                          color: Colors.white,
                                                        )),
                                                    Text(
                                                        i == "assets/images/feed0.jpg"
                                                            ? "10 minutes ago"
                                                            : i == "assets/images/feed1.jpg"
                                                                ? "4 hours ago"
                                                                : "Just now",
                                                        style: TextStyle(
                                                          fontFamily: "CM",
                                                          fontSize: 12,
                                                          color: Colors.white,
                                                        )),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              );
                            }, childCount: 1),
                          ),
                          SliverPersistentHeader(
                            pinned: true,
                            floating: true,
                            delegate: ContestTabHeader(
                              pinnedStatusUi(),
                            ),
                          ),
                        ];
                      },
                      body: Container(
                        color: TalawaTheme.buildLightTheme().backgroundColor,
                        child: ListView.builder(
                          itemCount: posts.length,
                          padding: const EdgeInsets.only(top: 8),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return NewsFeedList(index: index);
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
          backgroundColor: TalawaTheme.secondaryColor1,
        ),
      ),
    );
  }

  Widget pinnedStatusUi() {
    return Stack(
      children: <Widget>[
        Container(
          height: 24,
          decoration: BoxDecoration(
            color: TalawaTheme.buildLightTheme().backgroundColor,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, -2),
                  blurRadius: 8.0),
            ],
          ),
        ),
        Container(
          color: TalawaTheme.buildLightTheme().backgroundColor,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 4),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '4 new pinned posts',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Top',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_upward_outlined,
                              color:
                                  TalawaTheme.buildLightTheme().primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
