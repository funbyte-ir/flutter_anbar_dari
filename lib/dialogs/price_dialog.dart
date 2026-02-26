import 'package:anbar_dari/models/product.dart';
import 'package:flutter/material.dart';

class PriceDialog extends StatelessWidget {
  PriceDialog(this.product, this.callback);
  Product product;
  Function(Product, int) callback;

  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    priceController = TextEditingController(text: product.price.toString());
    return AlertDialog(
      title: Text(product.name),
      content: TextField(
        controller: priceController,
        decoration: InputDecoration(),
      ),

      actions: [
        TextButton(
          onPressed: () {
            callback(product, int.parse(priceController.text));
            Navigator.of(context).pop();
          },
          child: Text("ثبت"),
        ),
      ],
    );
  }
}
