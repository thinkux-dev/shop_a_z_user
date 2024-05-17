import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_a_z_user/customwidgets/order_expansion_header.dart';
import 'package:shop_a_z_user/customwidgets/order_expansion_view.dart';
import 'package:shop_a_z_user/models/order_expansion_item.dart';
import 'package:shop_a_z_user/providers/order_provider.dart';

class OrderPage extends StatefulWidget {
  static const String routeName = 'order';
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<OrderExpansionItem> items = [];

  @override
  void didChangeDependencies() {
    items = Provider.of<OrderProvider>(context, listen: false).getExpansionItems();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Orders'),),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              items[index].isExpanded = isExpanded;
            });
            print(items[index].isExpanded);
          },
          children: items
              .map((e) => ExpansionPanel(
            headerBuilder: (context, isExpanded) =>
                OrderExpansionHeaderView(header: e.header),
            body: OrderExpansionBodyView(body: e.body),
            isExpanded: e.isExpanded,
          ))
              .toList(),
        ),
      ),
    );
  }
}
