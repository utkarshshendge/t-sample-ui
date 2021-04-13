import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talawa_sample_ui/views/pages/login_signup/signup_screen.dart';
import 'package:talawa_sample_ui/views/pages/newsfeed/news_feed_list_item.dart';
import 'package:talawa_sample_ui/views/view_models/post_model.dart';
import 'package:talawa_sample_ui/views/widgets/customButtons.dart';
import 'package:talawa_sample_ui/views/widgets/tab_header.dart';

import '../../../app_theme.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            'Profile',
            style: TextStyle(
                color: Colors.black87, fontFamily: 'CM', fontSize: 22),
          ),
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
                              return Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 90,
                                          height: 90,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black45,
                                                offset: Offset(0, 2),
                                                blurRadius: 8.0,
                                              ),
                                            ],
                                          ),
                                          child: CircleAvatar(
                                            radius: 45,
                                            backgroundColor:
                                                TalawaTheme.secondaryColor1,
                                            child: ClipOval(
                                              child: Image(
                                                height: 80,
                                                width: 80,
                                                image: AssetImage(
                                                    posts[0].authorImagePath),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.building,
                                                  color: TalawaTheme
                                                      .secondaryColor1,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  '5 organizations joined',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: "CM",
                                                      fontSize: 16),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.tasks,
                                                  color: TalawaTheme
                                                      .primatyColorShadeLightShade,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  '7 tasks completed',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: "CM",
                                                      fontSize: 16),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Bruce Wayne',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "CM",
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'bwayne@batcave.com',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    )
                                  ],
                                ),
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
                      body: SingleChildScrollView(
                        child: Container(
                          color: TalawaTheme.buildLightTheme().backgroundColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              CustomShadowButton(
                                customIcon: Icon(FontAwesomeIcons.userEdit),
                                label: "Update Profile",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomShadowButton(
                                customIcon: Icon(FontAwesomeIcons.building),
                                label: "View Organizations",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomShadowButton(
                                customIcon: Icon(FontAwesomeIcons.exchangeAlt),
                                label: "Switch Organization",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomShadowButton(
                                customIcon: Icon(FontAwesomeIcons.userShield),
                                label: "Be An Admin",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()),
                                  );
                                },
                                child: CustomShadowButton(
                                  customIcon: Icon(FontAwesomeIcons.signOutAlt),
                                  label: "Logout",
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/logo.png',
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'About Talawa',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
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
                      '7 Tasks Pending',
                      style: TextStyle(fontSize: 16, color: Colors.black),
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
                          'See Tasks',
                          style: TextStyle(
                              fontFamily: 'CM',
                              fontSize: 16,
                              color: TalawaTheme.primatyColorShadeLightShade),
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
