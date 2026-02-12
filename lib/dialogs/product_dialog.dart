import 'package:anbar_dari/models/product.dart';
import 'package:flutter/material.dart';

class ProductDialog extends StatelessWidget {
  ProductDialog(this.callback, {super.key});

  Function(Product) callback;

  Product? product;

  TextEditingController nameController = TextEditingController();
  TextEditingController countController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        title: Text('محصول'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'نام محصول'),
            ),
            TextField(
              controller: countController,
              decoration: InputDecoration(labelText: 'تعداد'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('انصراف'),
          ),
          TextButton(
            onPressed: () {
              product = Product(
                nameController.text,
                int.parse(countController.text),
              );

              callback(product!);
              Navigator.of(context).pop();
            },
            child: Text('ثبت'),
          ),
        ],
      ),
    );
  }
}
