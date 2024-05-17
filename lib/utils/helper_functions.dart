import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

showMsg(BuildContext context, String msg) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.green,));

showMsgErr(BuildContext context, String msg) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red,));

getFormattedDate(DateTime dt, {String pattern = 'dd/MM/yyyy'}) =>
    DateFormat(pattern).format(dt);

String get generateOrderId =>
    'ABC_${getFormattedDate(DateTime.now(), pattern: 'yyyyMMdd_HH:mm:ss')}';

num priceAfterDiscount(num price, num discount) =>
    price - (price * discount / 100);