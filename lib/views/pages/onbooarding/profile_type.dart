import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/app_theme.dart';

class ProfileTypePage extends StatefulWidget {
  @override
  _ProfileTypePageState createState() => _ProfileTypePageState();
}

class _ProfileTypePageState extends State<ProfileTypePage> {
  bool isUser = true;

  List<PostType> userType = [];

  @override
  void initState() {
    super.initState();
    userType.add(PostType("Admin", false));
    userType.add(PostType("Normal User", true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),

              Text(
                "Select Profile Type",
                style: TextStyle(
                    fontFamily: "CM", fontSize: 25, color: Colors.black87),
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 100,
              ),
              // RichText(
              //   text: TextSpan(
              //       text: "The profile type is \n",
              //       style: TextStyle(
              //           fontFamily: "CM", fontSize: 25, color: Colors.black87),
              //       children: <TextSpan>[
              //         TextSpan(
              //           text: isUser ? "Normal User" : "Admin",
              //           style: TextStyle(
              //               fontFamily: "CM",
              //               fontSize: 25,
              //               color: Colors.black),
              //         )
              //       ]),
              // ),
              SizedBox(
                height: 50,
              ),

              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 16, top: 8),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: isUser
                        ? TalawaTheme.buildLightTheme().primaryColor
                        : Color(0xFFFFBD59),
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 8,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(24.0)),
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          isUser ? 'Proceed as Admin' : 'Proceed as User',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PostType {
  String name;
  bool isSelected;

  PostType(this.name, this.isSelected);
}
