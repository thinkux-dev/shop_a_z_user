import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_a_z_user/pages/cart_page.dart';
import 'package:shop_a_z_user/pages/login_page.dart';
import 'package:shop_a_z_user/pages/order_page.dart';
import 'package:shop_a_z_user/pages/user_profile.dart';

import '../auth/auth_service.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            height: 150,
          ),
          ListTile(
            onTap: () {
              context.pop();
              context.goNamed(UserProfilePage.routeName);
            },
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
          ),
          ListTile(
            onTap: () {
              context.pop();
              context.goNamed(CartPage.routeName);
            },
            leading: const Icon(Icons.shopping_cart),
            title: const Text('My Cart'),
          ),
          ListTile(
            onTap: () {
              context.pop();
              context.goNamed(OrderPage.routeName);
            },
            leading: const Icon(Icons.monetization_on),
            title: const Text('My Orders'),
          ),
          ListTile(
            onTap: () {
              AuthService.logout().then((value) => context.goNamed(LoginPage.routeName));
            },
            leading: const Icon(Icons.logout),
            title: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}
