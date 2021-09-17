import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery/models/cart_model.dart';

class Cart extends StatefulWidget {
  final List<FoodCart> carts;
  const Cart({required this.carts, Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CartState();
  }
}

class CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffF5F5F8),
        elevation: 0,
        leadingWidth: 80,
        title: Text(
          'Cart',
          style: TextStyle(
            color: Color(0xff000000),
            fontFamily: 'Exo_2',
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        leading: IconButton(
          alignment: Alignment.centerRight,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff000000),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/icon_swipe.png'),
                  SizedBox(width: 5),
                  Text(
                    'swipe on an item to delete',
                    style: TextStyle(
                        fontFamily: 'Exo_2',
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: Color(0xff000000)),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: _buildCartItem(widget.carts),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FlatButton(
        minWidth: 314,
        height: 70,
        shape:
            RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
        onPressed: () {},
        child: Text(
          'Complete order',
          style: TextStyle(
              fontFamily: 'Exo_2',
              fontWeight: FontWeight.w900,
              fontSize: 17,
              color: Color(0xffF6F6F9)),
        ),
        color: Color(0xffFA4A0C),
        textColor: Colors.white.withOpacity(0.9),
      ),
    );
  }

  _buildCartItem(List<FoodCart> carts) {
    return carts
        .map((item) => Slidable(
              key: UniqueKey(),
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Container(
                alignment: Alignment.center,
                height: 102,
                margin: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    ListTile(
                      minLeadingWidth: 80,
                      leading: Container(
                        alignment: Alignment.center,
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: AssetImage(item.img),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                      ),
                      title: Text(
                        item.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 17.0,
                          fontFamily: 'ZenDots',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      subtitle: Text(
                        '#${item.price}',
                        style: TextStyle(
                          color: Color(0xffFA4A0C),
                          fontSize: 15.0,
                          fontFamily: 'ZenDots',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 0,
                      child: quanlityItem(item),
                    )
                  ],
                ),
              ),
              secondaryActions: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.favorite_border_outlined,
                        color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: Color(0xffDF2C2C), // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _deleteItem(item);
                  },
                  child: Icon(Icons.delete_outline, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                    primary: Color(0xffDF2C2C), // <-- Button color
                    onPrimary: Colors.red, // <-- Splash color
                  ),
                ),
              ],
            ))
        .toList();
  }

  Widget quanlityItem(FoodCart item) => Container(
        height: 20,
        width: 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xffFA4A0C),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                child: Icon(
                  Icons.remove,
                  color: Color(0xffF4F4F7),
                  size: 13,
                ),
                onTap: () {
                  _quanlityCounter(item, Icons.remove);
                }),
            Text(
              '${item.quanlity}',
              style: (TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: 'ZenDots',
                  fontWeight: FontWeight.w400,
                  fontSize: 13)),
            ),
            InkWell(
              child: Icon(
                Icons.add,
                color: Color(0xffF4F4F7),
                size: 13,
              ),
              onTap: () {
                _quanlityCounter(item, Icons.add);
              },
            )
          ],
        ),
      );
  _deleteItem(FoodCart item) {
    setState(() {
      widget.carts.remove(item);
    });
  }

  _quanlityCounter(FoodCart item, IconData icon) {
    if (icon == Icons.remove && item.quanlity > 1) {
      item.quanlity--;
    }
    if (icon == Icons.add) {
      item.quanlity++;
    }
    setState(() {});
  }
}
