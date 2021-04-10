import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/app_theme.dart';
import 'package:talawa_sample_ui/views/pages/events/events_home_page.dart';
import 'package:talawa_sample_ui/views/pages/login_signup/login_screen.dart';
import 'package:talawa_sample_ui/views/pages/organization/organization_home_page.dart';
import 'package:talawa_sample_ui/views/pages/profile/profile_page.dart';
import 'package:talawa_sample_ui/views/widgets/customButtons.dart';

import '../bottom_nav_bar.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                        fontFamily: "CM", fontSize: 25, color: Colors.black87),
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " SignIn",
                          style: TextStyle(
                            fontSize: 18,
                            color: TalawaTheme.SecondaryColorLightShade,
                            fontFamily: 'CM',
                          ),
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        width: 76,
                        height: 76,
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
                        child: CircleAvatar(
                          backgroundColor:
                              TalawaTheme.buildLightTheme().primaryColor,
                          radius: 35,
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: TalawaTheme.secondaryColor1
                                    .withOpacity(0.9),
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
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
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.face_outlined, color: Colors.grey)),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: BoxDecoration(
                      color: TalawaTheme.buildLightTheme().backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 8.0),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Full name',
                        border: InputBorder.none,
                        helperStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.email_outlined, color: Colors.grey)),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: BoxDecoration(
                      color: TalawaTheme.buildLightTheme().backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 8.0),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: InputBorder.none,
                        helperStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.phone, color: Colors.grey)),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: BoxDecoration(
                      color: TalawaTheme.buildLightTheme().backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 8.0),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: InputBorder.none,
                        helperStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.visibility, color: Colors.grey)),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: BoxDecoration(
                      color: TalawaTheme.buildLightTheme().backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 8.0),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: InputBorder.none,
                        helperStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.lock_outlined, color: Colors.grey)),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: BoxDecoration(
                      color: TalawaTheme.buildLightTheme().backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 8.0),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        border: InputBorder.none,
                        helperStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: TalawaTheme.customGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrganizationHomePage()),
                  );
                },
                child: CustomButton(
                  label: 'SignUp',
                  buttonColor: TalawaTheme.primatyColorShadeLightShade,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
