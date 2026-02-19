import 'package:anbar_dari/models/product.dart';
import 'package:flutter/material.dart';

class ProductDialog extends StatelessWidget {
  ProductDialog(this.callback, {super.key});

  Function(String, int) callback;

  // Product? product;
  String name = '';
  int count = 0;
  //TextEditingController nameController = TextEditingController();
  // TextEditingController countController = TextEditingController();

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
              //controller: nameController,
              onChanged: (value) {
                name = value;
              },

              decoration: InputDecoration(labelText: 'نام محصول'),
            ),
            TextField(
              // controller: countController,
              onChanged: (value) {
                count = int.tryParse(value) ?? 0;
                //  if (product != null) {
                //   product = Product(
                //  name: product!.name,
                //     count: int.tryParse(value) ?? 0,
                // );
                // }
              },
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
              // product = Product( name,  count);

              callback(name, count);
              Navigator.of(context).pop();
            },
            child: Text('ثبت'),
          ),
        ],
      ),
    );
  }
}
