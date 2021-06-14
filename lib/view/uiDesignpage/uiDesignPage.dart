import 'package:flutter/material.dart';
import 'package:test/view/uiDesignpage/Components/everyDayStory.dart';
import 'package:test/view/uiDesignpage/Components/favourites.dart';
import 'package:test/view/uiDesignpage/Components/header.dart';
import 'package:test/view/uiDesignpage/Components/imageSlider.dart';
import 'package:test/view/uiDesignpage/Components/mythology.dart';
import 'package:test/view/uiDesignpage/Components/story.dart';
import 'package:test/view/uiDesignpage/Components/storyweaver.dart';

class UiDesignPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              ImageSlider(),
              Favourites(),
              EveryDayStory(),
              Mythology(),
              Story(),
              StoryWeaver()
            ],
          )
        ),
      ),
    );
  }
}