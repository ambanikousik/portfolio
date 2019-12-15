import 'package:portfolio/config/assets.dart';
import 'package:portfolio/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;


class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Rezaul Islam Kousik',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Android. Web. IOS. Game.\nFlutter. Unity. Cocos2D',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    label: Text('Github'),
                    onPressed:()=> html.window.open(Constants.PROFILE_GITHUB,'Kousik' ),
                  ),

                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.wallbreakers)),
                    label: Text('WallBreakes'),
                    onPressed:()=> html.window.open(Constants.PROFILE_WALLBREAKERS,'Kousik' ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed:()=> html.window.open(Constants.PROFILE_FACEBOOK,'Kousik' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.fiverr)),
                    label: Text('Fiverr'),
                    onPressed:()=> html.window.open(Constants.PROFILE_FIVERR,'Kousik' ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}