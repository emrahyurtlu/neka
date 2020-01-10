import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/utils/route_util.dart';
import 'package:neka/view/components/button_component.dart';
import 'package:neka/view/components/text_input_component.dart';
import 'package:neka/view/screens/forget_password_screen.dart';
import 'package:neka/view/screens/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController, passwordController;
  String _email, _password;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //signOut();

    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: AppColor.White,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 50),
              child: Image.asset(
                "assets/images/logo.png",
                width: 107,
                height: 107,
              ),
            ),
            Form(
              key: _formKey,
              child: Center(
                  child: Column(
                children: <Widget>[
                  //Email TextField
                  TextInputComponent(
                    emailController,
                    labelText: "Eposta",
                    inputType: TextInputType.emailAddress,
                    contentPadding: EdgeInsets.only(left: 0),
                  ),
                  //Password TextField
                  TextInputComponent(
                    passwordController,
                    labelText: "Şifre",
                    obscureText: true,
                    contentPadding: EdgeInsets.only(left: 0),
                  ),

                  //LoginButton
                  ButtonComponent(
                      text: "Giriş Yap",
                      onPressed: () async {
                        _email = emailController.text.trim();
                        _password = passwordController.text.trim();
                      }),

                  //Forget Password
                  Container(
                    alignment: Alignment.topRight,
                    child: ButtonComponent(
                      text: "Şifremi unuttum?",
                      onPressed: () {
                        redirectTo(context, ForgetPasswordScreen());
                      },
                      color: Colors.transparent,
                      textColor: AppColor.Text,
                    ),
                  ),

                  //Facebook
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: ButtonComponent(
                      text: "Facebook ile giriş yap",
                      color: AppColor.Facebook,
                      textColor: AppColor.White,
                      onPressed: () async {},
                    ),
                  ),

                  //Google
                  ButtonComponent(
                      text: "Google ile giriş yap",
                      color: AppColor.Google,
                      textColor: AppColor.White,
                      onPressed: () async {}),

                  //Sign Up
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.topRight,
                    child: ButtonComponent(
                      text: "Hesabınız yoksa. Üye Olun!",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                      color: Colors.white,
                      textColor: AppColor.Text,
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
