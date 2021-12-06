import 'package:ecommerce/signin.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(ShopTown());
}
class ShopTown extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySigin(),
    );
  }
}

