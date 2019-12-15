import 'package:portfolio/config/assets.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class BlogTab extends StatefulWidget {
  @override
  _BlogTabState createState() => _BlogTabState();
}

class _BlogTabState extends State<BlogTab> {


  @override
  Widget build(BuildContext context) {
    Size displaySize = MediaQuery.of(context).size;


    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: displaySize.width / 3,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Image.asset(Assets.cover,
                    width: displaySize.width,
                    fit: BoxFit.fitWidth,),
                  Positioned(
                    top: displaySize.width /5,
                    child: Container(
                      margin: EdgeInsets.only(left: 8.0),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            displaySize.width < 800 ? 0 : 50),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            displaySize.width < 800 ? 0 : 50),
                        child: Image.asset(
                           Assets.profile,
                          width: displaySize.width / 7,
                          height: displaySize.width / 7,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: displaySize.width,
                      child: Text(
                        "Rezaul Islam Kousik",
                        style: TextStyle(fontSize: 40),
                      )),
                  Container(
                    width: displaySize.width,
                    child: Text(
                      "Cross Platform Apps and Games Developer",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: displaySize.width / 1.1,
                    child: RichText(
                        textScaleFactor: 1.5,
                        textAlign: TextAlign.left,
                      text: TextSpan(
                        text:"A passionate and forward-thinking mobile application and game  developer has experience of building, integrating, testing, and supporting mobile applications for mobile devices.",
                        style: Theme.of(context).textTheme.body1,

                      children: <TextSpan>[
                        TextSpan(text: "\n\n Skills:",),
                        TextSpan(text: "\n Programming Languages: C , Java , C# , Php , Html , Dart.",),
                        TextSpan(text: "\n\n Working Experience:",),
                        TextSpan(text: "\n - Developed 2D Games With Unity Studio",),
                        TextSpan(text: "\n - Developed Apps with Flutter ",),
                        TextSpan(text: "\n - Developed Responsive website with HummingBierd ",),
                        TextSpan(text: "\n - Created Responsive E-Commerce Website with Wordpress.",),
                        TextSpan(text: "\n - Developed Cross Platform mobile Apps with Flutter SDK.",),
                        TextSpan(text: "\n - Worked as a video editor in our university journalism dept. using Adobe After Effect,Filmora",),
                        TextSpan(text: "\n\n\n Phone: +8801778846466",),
                        TextSpan(text: "\n Email: rikousik@gmail.com",),
                      ])

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                     // margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        //color: Colors.black,
                        height: 36,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Built with ❤️ in Flutter",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),

    );
  }



  }


