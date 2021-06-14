import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Story extends StatelessWidget {

  final List<String> imgList = [
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.ggbEkfuxNs6huQ07hsFkgwAAAA%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.E10DbYdv-vOHvuGiR7acZQAAAA%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.gO6Whio2D9cgA1WKKxcExwHaIV%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.i2aVuHwkK8K9BqpQ25goMQHaHa%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.gJvxwNAjcGLByIOP17fsKwHaJY%26pid%3DApi&f=1',
  ];

  final List<String> label = [
    'Letter A',
    'Letter B',
    'Letter C',
    'Letter D',
    'Letter E',
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
                  child: Image.network('https://cevo.com.au/wp-content/uploads/2020/07/tell-me-a-story.jpg',fit: BoxFit.fill,)
                )
              )
            ),
            Text(
              'ABC Phonices Stroies',
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