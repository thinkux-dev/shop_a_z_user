import 'package:flutter/material.dart';
import 'package:shop_a_z_user/models/order_expansion_item.dart';

class OrderExpansionBodyView extends StatelessWidget {
  final OrderExpansionBody body;
  const OrderExpansionBodyView({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Items', style: Theme.of(context).textTheme.titleLarge,),
          ),
          ... body.itemDetails
              .map((e) => ListTile(
            dense: true,
            title: Text(e.telescopeModel,),
            trailing: Text(
              '${e.quantity}x${e.price}',
              style: const TextStyle(fontSize: 18,),
            ),

          ))
              .toList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Customer Info', style: Theme.of(context).textTheme.titleLarge,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(body.appUser.userName ?? body.appUser.email, style: Theme.of(context).textTheme.bodyLarge,),
          ),
        ],
      ),
    );
  }
}
