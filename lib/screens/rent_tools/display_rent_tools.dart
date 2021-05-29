import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisanseva/main.dart';
import 'package:kisanseva/models/app_localization.dart';
import 'package:kisanseva/models/language.dart';
import 'package:get/get.dart';
import 'package:kisanseva/models/rent_tools_model.dart';
import 'package:kisanseva/screens/rent_tools/display_rent_tools_ctrl.dart';
import 'package:kisanseva/screens/rent_tools/rent_tools_template.dart';
import 'package:kisanseva/screens/weather/screens/homeScreen.dart';
import 'package:kisanseva/services/authservice.dart';
import 'package:logger/logger.dart';

import 'add_new.dart';
import 'desc_page.dart';

class DisplayRentTools extends StatelessWidget {
  final displayRentToolsCtrl = Get.put(DisplayRentToolsCtrl());
  final logger = Logger();


  @override
  Widget build(BuildContext context) {
    void _changeLanguage(Language language) {
      Locale _temp;
      switch (language.languageCode) {
        case 'en':
          _temp = Locale(language.languageCode, 'US');
          break;
        case 'hi':
          _temp = Locale(language.languageCode, 'IN');
          break;
      }
      MyApp.setLocale(context, _temp);
    }

    List<Widget> items = [];

    return Scaffold(
      drawer: Drawer(
          child: Align(
        alignment: Alignment(0.9, -0.9),
        child: DropdownButton(
          underline: SizedBox(),
          icon: Icon(Icons.language),
          iconSize: 40,
          items: Language.languageList()
              .map<DropdownMenuItem>((lang) => DropdownMenuItem(
                    child: Text(lang.name),
                    value: lang,
                  ))
              .toList(),
          onChanged: (language) {
            _changeLanguage(language);
          },
        ),
      )),
      appBar: AppBar(
        title: Text((AppLocalizations.of(context).translate("Rent Tools"))),
        actions: [
          DropdownButton(
            // underline: SizedBox(),
            icon: Icon(Icons.language, color: Colors.blue),
            iconSize: 24,
            items: Language.languageList()
                .map<DropdownMenuItem>((lang) => DropdownMenuItem(
                      child: Text(lang.name),
                      value: lang,
                    ))
                .toList(),
            onChanged: (language) {
              _changeLanguage(language);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.blue,
            ),
            onPressed: () async {
              AuthService().signOut();
              Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => AuthService().handleAuth()));
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: Colors.cyan,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            displayRentToolsCtrl.selectedCategory.value = "All";
                            // displayRentToolsCtrl.rentToolsStrems();
                            logger.d(
                                "displayRentToolsCtrl.selectedCategory.value is ${displayRentToolsCtrl.selectedCategory.value} ");
                          },
                          child: Obx(() => Text(
                                AppLocalizations.of(context).translate("All"),
                                style: displayRentToolsCtrl
                                            .selectedCategory.value ==
                                        "All"
                                    ? TextStyle(
                                        color: Colors.white,
                                      )
                                    : TextStyle(
                                        color: Colors.green,
                                      ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: Colors.cyan,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            displayRentToolsCtrl.selectedCategory.value =
                                "Tractors";

                            logger.d(
                                "displayRentToolsCtrl.selectedCategory.value is ${displayRentToolsCtrl.selectedCategory.value} ");
                          },
                          child: Obx(() => Text(
                                AppLocalizations.of(context)
                                    .translate("Tractors"),
                                style: displayRentToolsCtrl
                                            .selectedCategory.value ==
                                        "Tractors"
                                    ? TextStyle(
                                        color: Colors.black,
                                      )
                                    : TextStyle(
                                        color: Colors.green,
                                      ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(

                      width: 85,
                      decoration: BoxDecoration(



                        borderRadius: BorderRadius.circular(22.0),
                        color: Colors.cyan,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            displayRentToolsCtrl.selectedCategory.value =
                                "Harvestors";
                            // displayRentToolsCtrl.rentToolsStrems();
                            logger.d(
                                "displayRentToolsCtrl.selectedCategory.value is ${displayRentToolsCtrl.selectedCategory.value} ");
                          },
                          child: Obx(() => Text(
                                AppLocalizations.of(context)
                                    .translate("Harvestors"),
                                style: displayRentToolsCtrl
                                            .selectedCategory.value ==
                                        "Harvestors"
                                    ? TextStyle(
                                        color: Colors.white,
                                      )
                                    : TextStyle(
                                        color: Colors.orange,
                                      ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: Colors.cyan,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            displayRentToolsCtrl.selectedCategory.value =
                                "Pesticides";
                            // displayRentToolsCtrl.rentToolsStrems();
                            logger.d(
                                "displayRentToolsCtrl.selectedCategory.value is ${displayRentToolsCtrl.selectedCategory.value} ");
                          },
                          child: Obx(() => Text(
                                AppLocalizations.of(context)
                                    .translate("Pesticides"),
                                style: displayRentToolsCtrl
                                            .selectedCategory.value ==
                                        "Pesticides"
                                    ? TextStyle(
                                        color: Colors.black,
                                      )
                                    : TextStyle(
                                        color: Colors.green,
                                      ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: Colors.cyan,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            displayRentToolsCtrl.selectedCategory.value =
                                "Others";
                            // displayRentToolsCtrl.rentToolsStrems();
                            logger.d(
                                "displayRentToolsCtrl.selectedCategory.value is ${displayRentToolsCtrl.selectedCategory.value} ");
                          },
                          child: Obx(() => Text(
                                AppLocalizations.of(context)
                                    .translate("Others"),
                                style: displayRentToolsCtrl
                                            .selectedCategory.value ==
                                        "Others"
                                    ? TextStyle(
                                        color: Colors.black,
                                      )
                                    : TextStyle(
                                        color: Colors.green,
                                      ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() {
                displayRentToolsCtrl.selectedCategory.value;
                return StreamBuilder<dynamic>(
                  // stream: Firestore.instance.collection('rentTools').snapshots(),
                  stream: displayRentToolsCtrl.rentToolsStrems(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      //do something with the data
                      return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data.documents.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          DocumentSnapshot rentTools =
                              snapshot.data.documents[index];
                          RentToolsModel rentToolsModel =
                              RentToolsModel.fromJson(rentTools.data);
                          return RentToolsTemplate(
                              rentToolsModel: rentToolsModel);
                        },
                      );
                    } else if (snapshot.hasError) {
                      //do something with the error
                      return Text(snapshot.error.toString());
                    }
                    //the data is not ready, show a loading indicator
                    return Center(child: CircularProgressIndicator());
                  },
                );
              })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddItem(),
            ),
          );
        },
      ),
    );
  }
}
