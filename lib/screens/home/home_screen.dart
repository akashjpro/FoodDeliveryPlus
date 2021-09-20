import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/data/repositories/repositories.dart';
import 'package:food_delivery/screens/home/widgets/food_container.dart';

class HomeScreen extends StatefulWidget {
  final drawerController;
  const HomeScreen({Key? key, this.drawerController}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FoodRepository _foodRepo = FoodRepository();

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _foodRepo.getAllFoods('0', '10').then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          if (_selectedIndex != 0)
            widgetOptions.elementAt(_selectedIndex)
          else
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            widget.drawerController.toggle!();
                          },
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
                      constraints:
                          BoxConstraints(maxWidth: 270.0, maxHeight: 82.0),
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
                            return _buildCategories(
                                index, activeColor, dividerColor);
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
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 25,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              size: 25,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFFA4A0C),
        unselectedItemColor: Color(0xFFADADAF),
        onTap: _onItemTapped,
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
