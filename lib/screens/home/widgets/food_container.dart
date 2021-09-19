import 'package:flutter/material.dart';

class FoodContainer extends StatelessWidget {
  final String imgPath;
  final String name;
  final String price;
  const FoodContainer(
      {Key? key,
      required this.imgPath,
      required this.name,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.0,
      width: 220.0,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      const BoxShadow(
                        blurRadius: 60.0,
                        offset: Offset(0, 3),
                        color: Color.fromRGBO(57, 57, 57, 0.1),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 40.0),
                ),
                Image.asset(imgPath),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 125.0),
                        child: Text(
                          name,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Text(
                        price,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}