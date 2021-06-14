import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mythology extends StatelessWidget {

final List<String> imgList = [
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.Jgo_Y0eCQew8HkbrU5AdmwHaE9%26pid%3DApi&f=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fblog.kesari.in%2Fwp-content%2Fuploads%2F2017%2F09%2FKesari-Tours-durga-Mata-1600900.jpg&f=1&nofb=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.wordzz.com%2Fwp-content%2Fuploads%2F2016%2F12%2FLord-Hanuman-Desktop-HD-Wallpapers.jpg&f=1&nofb=1',
  'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fcdn141.picsart.com%2F297547804038201.jpg&f=1&nofb=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.-NOo3OR1bZvgwEJsvv4ZsQAAAA%26pid%3DApi&f=1',
];

final List<String> label = [
  'Ganesha',
  'Durga',
  'Hanuman',
  'Mahadev',
  'Maharaj',
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
                  child: Image.network('https://m.media-amazon.com/images/M/MV5BYjUyYTU0MzYtOWUwOC00MzIyLWJiMjQtZjU0NzgzNjhhZThiXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg',fit: BoxFit.fill,) //SvgPicture.asset('assets/images/ic_star.svg'),
                )
              )
            ),
            Text(
              'Indian Mythological tales',
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