import 'package:flutter/material.dart';
import 'package:neka/settings/colors.dart';
import 'package:neka/settings/font_families.dart';
import 'package:neka/utils/console_log_util.dart';
import 'package:neka/view/components/header_component.dart';
import 'package:neka/view/components/text_input_component.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Header(
                    'Ürün yada İşletme arayın',
                    fontSize: 16,
                    fontFamily: FontFamily.AvenirHeavy,
                    color: AppColor.Text,
                  )),
              Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  border: Border.all(color: AppColor.Text),
                  color: Color.fromRGBO(250, 250, 250, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Form(
                      child: Row(
                        children: <Widget>[
                          TextInputComponent(
                            _searchController,
                            width: MediaQuery.of(context).size.width - 30,
                            labelText: 'Ara',
                            hintText: 'Birşeyler yazın',
                            contentPadding: EdgeInsets.all(0),
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            height: 50,
                            onChanged: (String txt) {
                              consoleLog(
                                  'Aranacak kelime: ' + _searchController.text);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
