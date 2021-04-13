import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/pages/login_signup/signup_screen.dart';
import 'package:talawa_sample_ui/views/widgets/customButtons.dart';

import '../../../app_theme.dart';
import '../bottom_nav_bar.dart';

class AddProfilePicture extends StatefulWidget {
  @override
  _AddProfilePictureState createState() => _AddProfilePictureState();
}

class _AddProfilePictureState extends State<AddProfilePicture> {
  double circularWidgetSize = 120.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TalawaTheme.buildLightTheme().backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => BottomNavScreen(
                          initialIndex: 1,
                        )),
              );
            },
            child: SizedBox(
              height: 50,
              width: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomBadgeButton(
                  label: 'Skip',
                  buttonColor: TalawaTheme.secondaryColor1.withOpacity(0.8),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add a Profile Photo",
                      style: TextStyle(
                          fontFamily: "CM",
                          fontSize: 25,
                          color: Colors.black87),
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                      height: 50,
                    ),
                  ],
                ),
                SizedBox(
                  height: circularWidgetSize / 2,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Container(
                            height: circularWidgetSize,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(0, 2),
                                  blurRadius: 4.0,
                                ),
                              ],
                            ),
                            child: Stack(children: [
                              Positioned(
                                child: CircleAvatar(
                                  backgroundColor: TalawaTheme.buildLightTheme()
                                      .primaryColor,
                                  radius: circularWidgetSize / 2,
                                  child: CircleAvatar(
                                    radius: circularWidgetSize / 2 - 4,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.person,
                                      color: TalawaTheme.secondaryColor1,
                                      size: circularWidgetSize / 2,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: circularWidgetSize / 2 + 5,
                                child: CircleAvatar(
                                  backgroundColor: TalawaTheme.buildLightTheme()
                                      .primaryColor,
                                  radius: circularWidgetSize / 4.5,
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.white,
                                    size: circularWidgetSize / 4,
                                  ),
                                ),
                              )
                            ])),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Add Photo',
                          style: TextStyle(
                              fontFamily: "CM",
                              color: Colors.black38,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: circularWidgetSize + 180,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavScreen(
                                initialIndex: 1,
                              )),
                    );
                  },
                  child: CustomButton(
                    label: 'Proceed',
                    buttonColor: TalawaTheme.primatyColorShadeLightShade,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
