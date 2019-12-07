import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/styles.dart';
import 'package:neka/view/components/button_component.dart';
import 'package:neka/view/components/text_input_component.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  static String _citySelected = "";
  static String _districtSelected = "";
  static List<String> _cities = <String>['Ankara', 'İstanbul'];
  static List<String> _districts = <String>['Keçiören', 'Bakırköy'];

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Üye Olun", style: AppStyle.AppBarTextStyle),
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
                    //Name Surname
                    TextInputComponent(
                      _nameController,
                      labelText: "Ad Soyad",
                      contentPadding: EdgeInsets.only(left: 0),
                    ),

                    //Email
                    TextInputComponent(
                      _emailController,
                      labelText: "Eposta",
                      hintText: "you@example.com",
                      inputType: TextInputType.emailAddress,
                      contentPadding: EdgeInsets.only(left: 0),
                    ),

                    //Password
                    TextInputComponent(
                      _passwordController,
                      labelText: "Şifre",
                      hintText: "***",
                      inputType: TextInputType.text,
                      obscureText: true,
                      contentPadding: EdgeInsets.only(left: 0),
                    ),

                    //City
                    /*DropdownComponent(
                      selected: _citySelected,
                      options: _cities,
                      hintText: "İl seçiniz",
                      onChanged: (selected) {
                        setState(() {
                          _citySelected = selected;
                          _districts = null;
                          _districtSelected = _districts[0];
                        });
                      },
                    ),

                    //District
                    DropdownComponent(
                      selected: _districtSelected,
                      options: _districts,
                      hintText: "İlçe seçiniz",
                      onChanged: (String selected) {
                        setState(() {
                          _districtSelected = selected;
                        });
                      },
                    ),*/

                    //Submit btn
                    ButtonComponent(
                      text: "Üye Ol",
                      onPressed: () async {
                        var name = _nameController.text.trim();
                        var email = _emailController.text.trim();
                        var password = _passwordController.text.trim();
                        var city = _citySelected.trim();
                        var district = _districtSelected.trim();
                        if (name.isNotEmpty &&
                            email.isNotEmpty &&
                            (password.isNotEmpty && password.length > 5)) {
                        } else {
                          _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Text(
                                  "Alanlar boş olamaz. Şifre en az 6 karakterden oluşmalıdır.")));
                        }
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
