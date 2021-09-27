import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery/screens/cart/cart_screen_bloc.dart';
import 'package:food_delivery/screens/cart/cart_screen_event.dart';
import 'package:food_delivery/helper/api_helper.dart';
import 'package:food_delivery/model/response/getProductInCart/get_product_in_cart_response.dart';
import 'package:food_delivery/states/cart_screen_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cart extends StatefulWidget {
  static String routeName = "/CartScreen";
  const Cart({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CartState();
  }
}

class CartState extends State<Cart> {
  late List<ProductInCart> products;
  late Completer<void> _completer;
  final apiHelper = ApiHelper();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _completer = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartScreenBloc(apiHelper: apiHelper)
            ..add(CartScreenEventRequested()),
        ),
      ],
      child: Scaffold(
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
        body: BlocConsumer<CartScreenBloc, CartScreenState>(
          listener: (context, cartState) {
            if (cartState is StateFailure)
              _showAlertDialog('Error', cartState.e);
          },
          builder: (context, cartState) {
            if (cartState is CartScreenStateLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: Color(0xffFA4A0C),
                ),
              );
            } else if (cartState is CartScreenStateSuccess) {
              products = cartState.items.toList();
              _completer.future;
              if (products.isEmpty)
                return Center(
                  child: Text('No food in cart !'),
                );
              else {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_swipe.png'),
                            SizedBox(width: 5),
                            Text(
                              'swipe on an item to delete ',
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
                          children: _buildCartItem(products, context),
                        ),
                      ),
                    ],
                  ),
                );
              }
            } else {
              return Center(child: Text('Failed to load'));
            }
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FlatButton(
          minWidth: 314,
          height: 70,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30)),
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
      ),
    );
  }

  _buildCartItem(List<ProductInCart> carts, BuildContext _context) {
    return carts.map((item) {
      int _quantity = item.quantity;
      return Slidable(
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
                      image: NetworkImage(item.images[1]['imageUrl']),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                ),
                title: Text(
                  item.foodName,
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
                  '${item.price * _quantity}',
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
                child: quanlityItem(item, _context),
              )
            ],
          ),
        ),
        secondaryActions: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.favorite_border_outlined, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: Color(0xffDF2C2C), // <-- Button color
                onPrimary: Colors.red, // <-- Splash color
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => BlocProvider.of<CartScreenBloc>(_context)
              ..add(CartScreenEventDelete(product: item)),
            child: Icon(Icons.delete_outline, color: Colors.white),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
              primary: Color(0xffDF2C2C), // <-- Button color
              onPrimary: Colors.red, // <-- Splash color
            ),
          ),
        ],
      );
    }).toList();
  }

  _showAlertDialog(String title, String content) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("$title"),
          content: Text("$content"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget quanlityItem(ProductInCart item, BuildContext _context) {
    return Container(
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
              onTap: () => BlocProvider.of<CartScreenBloc>(_context)
                ..add(CartScreenEventDecrement(product: item))),
          Text(
            '${item.quantity}',
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
              onTap: () => BlocProvider.of<CartScreenBloc>(_context)
                ..add(CartScreenEventIncrement(product: item)))
        ],
      ),
    );
  }
}
