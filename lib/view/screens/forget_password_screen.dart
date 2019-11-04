import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/styles.dart';
import 'package:neka/view/components/button_component.dart';
import 'package:neka/view/components/text_input_component.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şifremi Unuttum", style: AppStyle.AppBarTextStyle),
        backgroundColor: ColorWhite,
        centerTitle: false,
        iconTheme: IconThemeData(color: ColorPrimary),
      ),
      body: SafeArea(
        child: Container(
          color: ColorWhite,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 40),
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
                    TextInputComponent(
                      _emailController,
                      labelText: "Eposta",
                      hintText: "you@example.com",
                      inputType: TextInputType.emailAddress,
                      contentPadding: EdgeInsets.only(left: 0),
                    ),
                    ButtonComponent(
                      text: "Şifremi Hatırlat",
                      onPressed: () {
                        var email = _emailController.text.trim();
                        if (email != null) {}
                      },
                    ),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
