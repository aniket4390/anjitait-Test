import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoryWeaver extends StatelessWidget {

  final List<String> imgList = [
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.qdYT1uoerusEA11Ey0ObOwHaDj%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.R5RPZpvuCIP-ZDR52Uou1AHaDi%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.J0AgoPx1qrrPnhGt19qLhQHaD_%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.k5aHWGTbIHOv-yptz-j5uQHaIM%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.J0AgoPx1qrrPnhGt19qLhQHaD_%26pid%3DApi&f=1',
  ];


  final List<String> label = [
    'Girl',
    'Banana',
    'Kite',
    'Girls',
    'Kite',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 60,width: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network('https://c4.wallpaperflare.com/wallpaper/523/686/385/sword-art-online-anime-landscape-wallpaper-preview.jpg',fit: BoxFit.fill,)
                )
              )
            ),
            Text(
              'Storyweaver',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          height: 250,
          child: ListView.separated(
            itemCount: imgList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Container(
                height: 250,width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey[200],
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(   
                          height: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(imgList[index] ,fit: BoxFit.cover,)),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 8.0), child: Text(label[index],style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900),))
                      ],
                    ),
                    Positioned(
                      left: 50.0,
                      top: 130.0,
                      child: SvgPicture.asset('assets/images/ic_play.svg',width: 60,height: 60)
                    ),
                  ],
                )
                );
              },
              separatorBuilder: (context,index){return SizedBox(width: 20.0);
            }
          ),
        )
      ],
    );
  }
}