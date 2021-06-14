import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EveryDayStory extends StatelessWidget {

final List<String> imgList = [
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.FcvAN_yWTz7kIAaqhmSymQHaHa%26pid%3DApi&f=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.wOn0dEiUZS6Ir4JL6nEGvQHaEK%26pid%3DApi&f=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.CG0wq-rQSaLAYYabFTDImAHaEK%26pid%3DApi&f=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.iMsQBGuO04HmT7BcN2XB8AHaE8%26pid%3DApi&f=1',
  'https://media1.thehungryjpeg.com/thumbs2/ori_3483759_ffd6da4dfc2303dd5818113748c10f9bc04b3560_cute-cartoon-family-vector-characters-in-casual-clothes.jpg',
];

final List<String> label = [
  'Saving the Room',
  'Droplet',
  'Crowing',
  'Sky',
  'Story',
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
                child: Image.network('https://i.pinimg.com/originals/a5/1a/2f/a51a2ffcd11a49b83b6c71a6ef129a42.jpg')
              )
            ),
            Text(
              'Everyday Stories',
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