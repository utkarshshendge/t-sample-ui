import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/app_theme.dart';
import 'package:talawa_sample_ui/views/pages/events/events_home_page.dart';
import 'package:talawa_sample_ui/views/pages/login_signup/login_screen.dart';
import 'package:talawa_sample_ui/views/pages/organization/organization_home_page.dart';
import 'package:talawa_sample_ui/views/pages/profile/profile_page.dart';
import 'package:talawa_sample_ui/views/widgets/custom_bottom_bar.dart';
import 'package:talawa_sample_ui/views/widgets/custom_buttons.dart';
import 'add_profilepic_screen.dart';

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
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
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
                height: 70,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                        height: 60,
                        child: Icon(Icons.face_outlined,
                            color: TalawaTheme.secondaryColor1)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: TalawaTheme.textBoxDecoration,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                        // width: 60,
                        height: 60,
                        child: Icon(Icons.email_outlined,
                            color: TalawaTheme.secondaryColor1)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: TalawaTheme.textBoxDecoration,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                        height: 60,
                        child: Icon(Icons.phone,
                            color: TalawaTheme.secondaryColor1)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: TalawaTheme.textBoxDecoration,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                        height: 60,
                        child: Icon(Icons.visibility,
                            color: TalawaTheme.secondaryColor1)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: TalawaTheme.textBoxDecoration,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                        height: 60,
                        child: Icon(Icons.lock_outlined,
                            color: TalawaTheme.secondaryColor1)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    // color: Colors.white,
                    width: 250,
                    decoration: TalawaTheme.textBoxDecoration,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AddProfilePicture()),
          );
        },
        child: CustomBottomBar(
          child: CustomButton(
            buttonColor: TalawaTheme.primatyColorShadeLightShade,
            label: "Signup",
          ),
        ),
      ),
    );
  }
}
