import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:lottie/lottie.dart';

import 'news_screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Country _selected;
  String countrySelected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60.0, right: 30.0, bottom: 30.0, left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'News Panda 🐼',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Image.asset('assets/images/main.png'),
                  Text(
                    'News Panda provides a real-time and updated news services around 20 countries worldwide. Beta Version: 1.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)
                      )
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Pick your country',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        CountryPicker(
                          showName: true,
                          showFlag: true,
                          showDialingCode: false,
                          onChanged: (Country country){
                            setState(() {
                              _selected = country;
                              countrySelected = country.isoCode.toString().toLowerCase();
                              print(countrySelected);
                            });
                          },
                          selectedCountry: _selected,
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        RaisedButton(
                            color: Colors.lightGreen,
                            padding: EdgeInsets.only(top: 20.0, right: 50.0, bottom: 20.0, left: 50.0),
                            child: Text(
                                'Proceed',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => NewsScreen(
                                    country: countrySelected,

                                  )
                              ));
                        }),
                        SizedBox(
                          height: 60.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
