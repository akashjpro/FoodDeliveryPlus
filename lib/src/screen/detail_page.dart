import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/size_config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  PageController _pageviewcontroller = new PageController();

  Color mainDetailColor = Color(0xffF6F6F9);
  Color colorButton = Color(0xffFA4A0C);
  Color colorText = Color(0xffF6F6F9);
  //late Color mainDetailColor = Colors.amberAccent;

  List<String> images = [
    'assets/images/image_2.png',
    'assets/images/image_2.png',
    'assets/images/image_2.png',
    'assets/images/image_2.png',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xffF6F6F9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GroudIcon(),
            PageViewItems(),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(child: SmoothPage()),
            ),
            Container(
              margin: EdgeInsets.only(
                  //top: SizeConfig.screenheight * 0.08,
                  ),
              child: TextFoodDetail(),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'N1,900',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.screenwidth * 0.1,
                right: SizeConfig.screenwidth * 0.1,
                top: SizeConfig.screenheight * 0.05,
              ),
              child: Text(
                'Delivery info',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.screenwidth * 0.1,
                right: SizeConfig.screenwidth * 0.1,
                top: 5,
              ),
              child: Text(
                'Delivered between monday aug and \nthursday 20 from 8pm to 91:32 pm',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.screenwidth * 0.1,
                right: SizeConfig.screenwidth * 0.1,
                top: SizeConfig.screenheight * 0.05,
                bottom: 5,
              ),
              child: Text(
                'Return policy',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.screenwidth * 0.1,
                right: SizeConfig.screenwidth * 0.1,
              ),
              child: Rich_Text(),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.screenwidth * 0.1,
                right: SizeConfig.screenwidth * 0.1,
                top: SizeConfig.screenheight * 0.05,
              ),
              child: ButtonAddToCart(),
            ),
          ],
        ),
      ),
    );
  }

  Widget ButtonAddToCart() {
    return SizedBox(
      height: SizeConfig.screenheight * 0.07,
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          print('button');
        },
        child: Text(
          'Add to cart',
          style: TextStyle(
            fontSize: 16,
            color: colorText,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
        color: colorButton,
      ),
    );
  }

  //Widget

  Widget TextFoodDetail() {
    return Center(
      child: Text(
        'Veggie tomato mix',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget PageViewItems() {
    return Container(
      width: SizeConfig.screenwidth,
      height: SizeConfig.screenheight * 0.3,
      margin: EdgeInsets.only(top: 10),
      child: PageView.builder(
        controller: _pageviewcontroller,
        itemCount: images.length,
        itemBuilder: (items, index) {
          return Image.asset(
            images[index],
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitHeight,
          );
        },
      ),
    );
  }

  Widget SmoothPage() {
    return SmoothPageIndicator(
      count: images.length,
      controller: _pageviewcontroller,
      effect: WormEffect(
        spacing: 10.0,
        //radius: 4.0,
        dotWidth: 10.0,
        dotHeight: 10.0,
        //strokeWidth: 1,
        dotColor: Colors.grey,
        activeDotColor: Colors.red,
      ),
    );
  }

  Widget Rich_Text() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'All our foods are double checked',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          TextSpan(
            text: 'before leaving our stores so by any',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          TextSpan(
            text: 'case you found a broken food please',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          TextSpan(
            text: 'contact our hotline immediately.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }

  Widget GroudIcon() {
    return Container(
      margin: EdgeInsets.only(
        left: SizeConfig.screenwidth * 0.05,
        right: SizeConfig.screenwidth * 0.05,
        top: SizeConfig.screenheight * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              print('button');
            },
            icon: Image.asset(
              'assets/icons/back.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          IconButton(
            onPressed: () {
              print('button');
            },
            icon: Icon(
              FontAwesomeIcons.heart,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }

  //Funtion

}
