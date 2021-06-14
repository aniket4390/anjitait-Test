import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

final List<String> imgList = [
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.quotesgram.com%2Fimg%2F54%2F28%2F890986461-Junglebook526.jpg&f=1&nofb=1",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.nQBQL3eeuN-5Vyv-RysznwHaEn%26pid%3DApi&f=1",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.CG0wq-rQSaLAYYabFTDImAHaEK%26pid%3DApi&f=1",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.fX1CpHNQJShHBTbsv1lOBwHaEO%26pid%3DApi&f=1",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F3.bp.blogspot.com%2F-9oAoB8YSXwM%2FWS2qz8eKrqI%2FAAAAAAAAEdg%2FQstcAXG6opExfAbjT-e5Rx5-UNQoid3CQCLcB%2Fw1200-h630-p-k-no-nu%2FGuyGilchrist%252BBUGS%252BBUNNY%252BCOLORS%252BRGB%252Bfor%252BWEB.jpg&f=1&nofb=1"
];

final List<String> label = ['Jungle ka Raja Sher','Dr. A. P. J. Abdul Kalam','Morning Animal','Snow Bunny',"Bugs Bunny"];

class ImageSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<ImageSlider> {
  int _current = 0;


  final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      child: Stack(
        children: <Widget>[
          Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
            left: 40.0,
            top: 70.0,
            child: SvgPicture.asset('assets/images/ic_play.svg',width: 80,height: 80,)
            ),
        Positioned(
            left: 40.0,
            top: 30.0,
            child: Text(
              '${label[imgList.indexOf(item)]}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ))
        ],
      )
    ),
  ),
)).toList();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ]
    );
  }
}
