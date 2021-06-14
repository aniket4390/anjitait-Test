import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home-header.png'),
              fit: BoxFit.cover
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 10.0,
                child: SvgPicture.asset('assets/images/star_premium.svg',width: 120,height: 120)),
              Positioned(
                top: 91.0,
                child: Container(
                  height: 110.0,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset( 'assets/images/cloud-header.png', fit: BoxFit.fill,),
                )
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 2.5,
                      backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.nt6vgqxYy-I90ra9kE_zVAHaHa%26pid%3DApi&f=1'),
                    ),
                    SizedBox(height: 1.5),
                    CircleAvatar(radius: 2.5,
                      backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.nt6vgqxYy-I90ra9kE_zVAHaHa%26pid%3DApi&f=1') 
                    ),
                    SizedBox(height: 1.5),
                    CircleAvatar(radius: 2.5,
                      backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.nt6vgqxYy-I90ra9kE_zVAHaHa%26pid%3DApi&f=1'),
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ],
    );
  }
}