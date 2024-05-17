import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shop_a_z_user/pages/cart_page.dart';
import 'package:shop_a_z_user/providers/cart_provider.dart';
import 'package:shop_a_z_user/providers/user_provider.dart';
import 'package:shop_a_z_user/utils/colors.dart';
import 'package:shop_a_z_user/utils/contants.dart';
import 'package:shop_a_z_user/utils/helper_functions.dart';

import '../models/telescope_model.dart';
import '../providers/telescope_provider.dart';

class TelescopeDetailsPage extends StatefulWidget {
  static const String routeName = 'productdetails';
  final String id;

  const TelescopeDetailsPage({
    super.key,
    required this.id,
  });

  @override
  State<TelescopeDetailsPage> createState() => _TelescopeDetailsPageState();
}

class _TelescopeDetailsPageState extends State<TelescopeDetailsPage> {
  late TelescopeModel telescopeModel;
  late TelescopeProvider provider;
  late CartProvider cartProvider;
  double userRating = 0.0;
  num cartItems = 0;
  bool isRatingSubmitted = false;

  @override
  void didChangeDependencies() {
    provider = Provider.of<TelescopeProvider>(
      context,
    );
    telescopeModel = provider.findTelescopeById(widget.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    cartProvider = Provider.of<CartProvider>(context);
    final cartList = cartProvider.cartList;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          telescopeModel.model,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  context.goNamed(CartPage.routeName);
                },
                icon: const Icon(Icons.shopping_cart, size: 24,),
              ),
              cartList.isEmpty ? Container() :
                  Positioned(
                    bottom: 4.0,
                    left: 3.0,
                    child: Stack(
                      children: [
                        const Icon(Icons.brightness_1, size: 25.0, color: Colors.red,),
                        Positioned(
                          top: -1.0,
                          right: 9.0,
                          child: Flexible(
                            child: Center(
                              child: Text(
                                cartList.length.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          )
                        )
                      ],
                    )
                  )
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          CachedNetworkImage(
            width: double.infinity,
            height: 200,
            imageUrl: telescopeModel.thumbnail.downloadUrl,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Consumer<CartProvider>(
              builder: (context, provider, child) {
                final isInCart = provider.isTelescopeinCart(telescopeModel.id!);
                return ElevatedButton.icon(
                  onPressed: () {
                    if (isInCart) {
                      provider.removeFromCart(telescopeModel.id!);
                    } else {
                      provider.addToCart(telescopeModel);
                    }
                  },
                  icon: Icon(isInCart
                      ? Icons.remove_shopping_cart
                      : Icons.shopping_cart),
                  label: Text(isInCart ? 'Remove from Cart' : 'Add to Cart'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isInCart ? kShrineBrown400 : kShrineBrown900,
                    foregroundColor: isInCart ? kShrinePink100 : kShrinePink50,
                  ),
                );
              },
            ),
          ),
          ListTile(
            title: Text(
              'Sale Price: $currencySymbol${priceAfterDiscount(telescopeModel.price, telescopeModel.discount)}',
            ),
            subtitle: Text('Stock: ${telescopeModel.stock}'),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RatingBar.builder(
                    initialRating: 0.0,
                    minRating: 0.0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      setState(() {
                        userRating = value;
                        isRatingSubmitted = false;
                      });
                    },
                  ),
                  OutlinedButton(
                    onPressed: userRating > 0.0 ? _rateThisProduct : null,
                    child: const Text('SUBMIT'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _rateThisProduct() async {
    EasyLoading.show(status: 'Please wait');
    final appUser =
        Provider.of<UserProvider>(context, listen: false).appUserModel;
    await provider.addRating(telescopeModel.id!, appUser!, userRating);
    EasyLoading.dismiss();
    showMsg(context, 'Thanks for giving your rating');
    setState(() {
      isRatingSubmitted = true;
    });
  }
}
