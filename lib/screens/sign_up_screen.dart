import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled2/screens/sign_in_screen.dart';
import 'package:untitled2/widgets/custom_text_field.dart';
import 'package:untitled2/widgets/icon_with_text_button.dart';
import 'package:untitled2/widgets/line_for_password_strength.dart';
import 'package:untitled2/widgets/or_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Color focusedBorderColor = Color(0xff210fe1);
  bool passObscureText = false, confirmpassObscureText = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  bool tooshortpass = false,
      shortpass = false,
      mediumpass = false,
      strongpass = false,
      fullstrongpass = false;
  int pass = -1;
  int current_pass_length = 0;
  int prev_pass_length = 0;
  RegExp veryStrong =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
  RegExp too_short_regex = RegExp(r'^[A-Z]$');
  RegExp short_regex = RegExp(r'^[a-z]$');
  RegExp good_regex = RegExp(r'^[0-9]$');
  RegExp strong_regex = RegExp(r'^[!@#\$&*~]$');
  String? errorText;

  void re_validate_password(String value) {
    pass = -1;
    tooshortpass = shortpass = mediumpass = strongpass = fullstrongpass = false;
    print("Current pass value in rev func $pass");
  }

  void validateConfirmPassword(String value) {
    if (value != passwordController.text) {
      focusedBorderColor = Colors.red;
      errorText = "Password Does Not Match";
    } else {
      focusedBorderColor = Color(0xff210fe1);
      errorText = null;
    }
  }

  void validatePassword(String value) {
    if (value.isNotEmpty) {
      if (current_pass_length < prev_pass_length) {
        re_validate_password(value);
      }
      if (veryStrong.hasMatch(value)) {
        fullstrongpass = true;
        pass = 4;
      } else {
        for (var i = 0; i < value.length; i++) {
          var char = value[i];
          if (too_short_regex.hasMatch(char) && !tooshortpass) {
            tooshortpass = true;
            pass = pass + 1;
          } else if (short_regex.hasMatch(char) && !shortpass) {
            shortpass = true;
            pass = pass + 1;
          } else if (good_regex.hasMatch(char) && !mediumpass) {
            mediumpass = true;
            pass = pass + 1;
          } else if (strong_regex.hasMatch(char) && !strongpass) {
            pass = pass + 1;
            strongpass = true;
          }
        }
      }
    } else {
      setState(() {
        pass = -1;
        tooshortpass =
            shortpass = mediumpass = strongpass = fullstrongpass = false;
        currentColor = Colors.grey;
      });
    }
    print("Current password length $current_pass_length");
    print("Prev password length $prev_pass_length");
    print("pass value in validate pass $pass");
    prev_pass_length = value.length;
  }

  Color currentColor = Colors.grey;

  var titleColor = [
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green.shade400,
    Colors.green,
  ];

  var passLengthTitle = ["Too short", "Weak", "Good", "Strong", "Very Strong"];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Get's started",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "We are happy to have you as our company's customer.",
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    label: Text("Email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    onChanged: (val) {
                      setState(() {
                        current_pass_length = val.length;
                        validatePassword(val);
                        currentColor = titleColor[pass];
                      });
                    },
                    controller: passwordController,
                    suffixIcon: passObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                    iconOnTap: () {
                      setState(() {
                        passObscureText = !passObscureText;
                      });
                    },
                    label: Text("Password"),
                    obscureText: passObscureText,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    onChanged: (val) {
                      setState(() {
                        validateConfirmPassword(val);
                      });
                    },
                    controller: confirmpassController,
                    suffixIcon: confirmpassObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                    iconOnTap: () {
                      setState(() {
                        confirmpassObscureText = !confirmpassObscureText;
                      });
                    },
                    focusedBorderColor: focusedBorderColor,
                    obscureText: confirmpassObscureText,
                    label: Text("Confirm Password"),
                  ),
                  errorText != null
                      ? Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              errorText!,
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                        ],
                      )
                      : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  passwordController.text.isNotEmpty && pass != -1
                      ? Column(
                          children: [
                            Row(
                              children: [
                                LinePassword(
                                  color: pass == 0
                                      ? titleColor[0].withOpacity(0.7)
                                      : pass > 0
                                          ? currentColor.withOpacity(0.7)
                                          : Color(0xffdddddd),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                LinePassword(
                                  color: pass == 1
                                      ? titleColor[1].withOpacity(0.7)
                                      : pass > 1
                                          ? currentColor.withOpacity(0.7)
                                          : Color(0xffdddddd),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                LinePassword(
                                  color: pass == 2
                                      ? titleColor[2].withOpacity(0.7)
                                      : pass > 2
                                          ? currentColor.withOpacity(0.7)
                                          : Color(0xffdddddd),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                LinePassword(
                                  color: pass == 3
                                      ? titleColor[3].withOpacity(0.7)
                                      : pass > 3
                                          ? currentColor.withOpacity(0.7)
                                          : Color(0xffdddddd),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                LinePassword(
                                  color: pass == 4
                                      ? titleColor[4].withOpacity(0.7)
                                      : pass > 4
                                          ? currentColor.withOpacity(0.7)
                                          : Color(0xffdddddd),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                passLengthTitle[pass],
                                style: TextStyle(
                                  color: currentColor.withOpacity(0.7),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )
                      : SizedBox(),
                  IconWithTextButton(
                    onTap: () {},
                    title: "SIGN UP",
                    bgColor: Color(0xff210fe1),
                    borderColor: Colors.transparent,
                    titleColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OrWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  IconWithTextButton(
                    onTap: () {},
                    title: "SIGN UP WITH GOOGLE",
                    iconData: FontAwesomeIcons.google,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  IconWithTextButton(
                    onTap: () {},
                    title: "SIGN UP WITH LINKEDIN",
                    iconData: FontAwesomeIcons.linkedin,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OrWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  IconWithTextButton(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => SignInScreen(),
                        ),
                      );
                    },
                    title: "LOG IN",
                    bgColor: Colors.white,
                    titleColor: Color(0xff210fe1),
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "If you already have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff878787),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
