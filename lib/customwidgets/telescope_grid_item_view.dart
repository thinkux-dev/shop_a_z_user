import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_a_z_user/models/telescope_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shop_a_z_user/pages/telescope_details_page.dart';
import 'package:shop_a_z_user/utils/contants.dart';
import 'package:shop_a_z_user/utils/helper_functions.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TelescopeGridItemView extends StatelessWidget {
  final TelescopeModel telescopeModel;

  const TelescopeGridItemView({super.key, required this.telescopeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(TelescopeDetailsPage.routeName, extra: telescopeModel.id);
      },
      child: Card(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: telescopeModel.thumbnail.downloadUrl,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Text(
                  telescopeModel.model,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(overflow: TextOverflow.ellipsis),
                ),
                if (telescopeModel.discount > 0)
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: RichText(
                      text: TextSpan(
                          text:
                              '$currencySymbol${priceAfterDiscount(telescopeModel.price, telescopeModel.discount)}',
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                          children: [
                            TextSpan(
                                text: ' $currencySymbol${telescopeModel.price}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ))
                          ]),
                    ),
                  ),
                if (telescopeModel.discount == 0)
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '$currencySymbol${telescopeModel.price}',
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4.0, vertical: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(telescopeModel.avgRating.toStringAsFixed(1)),
                      const SizedBox(
                        width: 5,
                      ),
                      RatingBar.builder(
                        initialRating: telescopeModel.avgRating.toDouble(),
                        minRating: 0.0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        ignoreGestures: true,
                        itemSize: 20,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      )
                    ],
                  ),
                )
              ],
            ),
            if(telescopeModel.discount > 0)
              Positioned(
                left: 0,
                right: 0,
                top: 10,
                child: Container(
                  color: Colors.red.withOpacity(0.8),
                  alignment: Alignment.center,
                  child: Text(
                    '${telescopeModel.discount}% OFF',
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              )
          ],
        ),
      ),
    );
  }
}
