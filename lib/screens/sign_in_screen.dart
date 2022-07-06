import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled2/screens/sign_up_screen.dart';
import 'package:untitled2/widgets/custom_text_field.dart';
import 'package:untitled2/widgets/icon_with_text_button.dart';
import 'package:untitled2/widgets/or_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool passobscureText = false;

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
                    "Sign In",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                    label: Text("Email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    onChanged: (val) {
                      setState(() {});
                    },
                    suffixIcon: passobscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                    iconOnTap: () {
                      setState(() {
                        passobscureText = !passobscureText;
                      });
                    },
                    label: Text("Password"),
                    obscureText: passobscureText,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  IconWithTextButton(
                    onTap: () {
                    },
                    title: "SIGN IN",
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
                    title: "SIGN IN WITH GOOGLE",
                    iconData: FontAwesomeIcons.google,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  IconWithTextButton(
                    onTap: () {},
                    title: "SIGN IN WITH LINKEDIN",
                    iconData: FontAwesomeIcons.linkedin,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OrWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  IconWithTextButton(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => SignUpScreen(),
                        ),
                      );
                    },
                    title: "SIGN UP",
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
                      "If you don't have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff878787),
                      ),
                    ),
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
