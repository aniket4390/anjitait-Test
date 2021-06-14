import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favourites extends StatelessWidget {

final List<String> imgList = [
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.pDeJXkvU8T7kVY4mR9xIcQHaEK%26pid%3DApi&f=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.nQBQL3eeuN-5Vyv-RysznwHaEn%26pid%3DApi&f=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.CG0wq-rQSaLAYYabFTDImAHaEK%26pid%3DApi&f=1',
  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.fX1CpHNQJShHBTbsv1lOBwHaEO%26pid%3DApi&f=1',
  'https://media1.thehungryjpeg.com/thumbs2/ori_3483759_ffd6da4dfc2303dd5818113748c10f9bc04b3560_cute-cartoon-family-vector-characters-in-casual-clothes.jpg',
  'https://cdn.britannica.com/87/887-050-04408E86/George-Washington-Bridge-New-Jersey-York-City.jpg',
];

  final List<bool> isFav = [true,true,false,true,false,true];

final List<String> label = ['Lion','Dr.Abdul Kalam','Animal','Rabbits','Family','Bridge'];

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
                child: SvgPicture.asset('assets/images/ic_star.svg'),
              )
            ),
            Text(
              'Favourites',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          height: 250,
          child: ListView.separated(
            itemCount: imgList.length + 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              try{
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
                     isFav[index] == true ? 
                     Positioned(
                      left: 10.0,
                      top: 10.0,
                      child: SvgPicture.asset('assets/images/star.svg',width: 40,height: 40)
                    )
                     : Positioned(
                      left: 0,
                      top: 0,
                      child:Container()
                    ),
                  ],
                )
                );
              }
              catch(e){print(e);return Container();}
              },
              separatorBuilder: (context,index){return SizedBox(width: 20.0);
            }
          ),
        )
      ],
    );
  }
}