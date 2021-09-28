import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/helper/api.dart';
import 'package:food_delivery/helper/api_helper.dart';
import 'package:food_delivery/model/food_model.dart';
import 'package:food_delivery/model/response/base_response.dart';
import 'package:food_delivery/model/response/detailFood/food_response.dart';
import 'package:food_delivery/screens/detail/detail_food_bloc.dart';
import 'package:food_delivery/screens/detail/detail_food_event.dart';
import 'package:food_delivery/screens/detail/detail_food_state.dart';
import 'package:food_delivery/service/api_client.dart';
import 'package:food_delivery/size_config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailPage extends StatefulWidget {
  static String routeName = "/DetailPage";

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

  late String foodId = '40fc68da-eb8d-42a5-bd91-250fd2996b19';

  final apiHelper = ApiHelper();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DetailFoodBloc(apiHelper: apiHelper),
          ),
        ],
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xffF6F6F9),
          child: BlocBuilder(
            bloc: DetailFoodBloc(apiHelper: apiHelper),
            builder: (BuildContext context, DetailFoodState state) {
              return column(context);
            },
          ),
        ),
      ),
    );
  }

  SingleChildScrollView column(BuildContext context) {
    return SingleChildScrollView(
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
              margin: EdgeInsets.only(top: 10),
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
              child: ButtonAddToCart(context),
            ),
          ],
        ),
      );
  }

  Widget ButtonAddToCart(BuildContext _context) {
    return SizedBox(
      height: SizeConfig.screenheight * 0.07,
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          //ApiClient(Dio()).getFoodDetails(foodId).then((value) => print(value));
          BlocProvider.of<DetailFoodBloc>(_context)
            ..add(addToCart(foodId: foodId));
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
      child: FutureBuilder<BaseResponse<FoodResponse>>(
        future: ApiClient(Dio()).getFoodDetails(foodId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(
              snapshot.data!.data.foodName,
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }

  Widget PageViewItems() {
    return Container(
      width: SizeConfig.screenwidth,
      height: SizeConfig.screenheight * 0.25,
      margin: EdgeInsets.only(top: 10),
      child: FutureBuilder<BaseResponse<FoodResponse>>(
          future: ApiClient(Dio()).getFoodDetails(foodId),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return PageView.builder(
                controller: _pageviewcontroller,
                itemCount: snapshot.data!.data.images.length,
                itemBuilder: (items, index) {
                  if (snapshot.hasData) {
                    return Image.network(
                      snapshot.data!.data.images[index].imageUrl,
                      fit: BoxFit.fill,
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return CircularProgressIndicator();
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          }),
    );
  }

  Widget SmoothPage() {
    return FutureBuilder<BaseResponse<FoodResponse>>(
        future: ApiClient(Dio()).getFoodDetails(foodId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SmoothPageIndicator(
              count: snapshot.data!.data.images.length,
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
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return CircularProgressIndicator();
        });
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
