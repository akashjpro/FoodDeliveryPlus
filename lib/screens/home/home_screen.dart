import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/home/widgets/food_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 15,
                    width: 22,
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 24,
                    width: 24,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 44.0),
            Container(
              constraints: BoxConstraints(maxWidth: 270.0, maxHeight: 82.0),
              child: Text(
                'Delicious food for you',
                maxLines: 270,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const SizedBox(height: 28.0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                      left: 35.0, right: 18.0, top: 18.0, bottom: 18.0),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 21.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none),
                hintText: 'Search',
                hintStyle: Theme.of(context).textTheme.headline2,
              ),
            ),
            const SizedBox(height: 40.0),
            Container(
              height: 60.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (_, index) {
                    final activeColor = categories[index]['isActive']
                        ? Color(0xFFFA4A0C)
                        : Color(0xFF9A9A9D);
                    final dividerColor = categories[index]['isActive']
                        ? Color(0xFFFA4A0C)
                        : Colors.transparent;
                    return _buildCategories(index, activeColor, dividerColor);
                  }),
            ),
            const SizedBox(height: 25.0),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            Align(
              alignment: Alignment.topRight,
              child: Text('see more',
                  style: Theme.of(context).textTheme.headline4),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foods.length,
                itemBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: FoodContainer(
                    imgPath: foods[index]['imgPath'],
                    name: foods[index]['name'],
                    price: foods[index]['price'],
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 20.0),
          ],
          // ),
          //],
        ),
      ),
    );
  }

  _buildCategories(int index, Color activeColor, Color dividerColor) {
    return GestureDetector(
      onTap: () {
        // BloC control fetch data by categories name here maybe :D
      },
      child: Container(
        height: 60.0,
        padding: EdgeInsets.only(right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              categories[index]['name'],
              style: TextStyle(
                color: activeColor,
                fontFamily: 'Exo',
                fontWeight: FontWeight.w600,
                fontSize: 17.0,
              ),
            ),
            Container(
              height: 3.0,
              width: 87.0,
              decoration: BoxDecoration(
                color: dividerColor,
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
