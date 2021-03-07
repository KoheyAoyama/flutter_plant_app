import 'package:flutter/material.dart';
import 'package:practice_01/constants.dart';
import 'featured_plants.dart';
import 'header_with_search_box.dart';
import 'recomends_plants.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will privde us totab height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Recommended", press: () {}),
          RecommendsPlants(),
          TitleWithMoreButton(title: "Featured", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
