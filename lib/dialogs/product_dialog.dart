import 'package:flutter/material.dart';

class ProductDialog extends StatelessWidget {
  ProductDialog(this.callback, {super.key});

  final Function(String) callback;

  // Product? product;
  String name = '';
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

              callback(name);
              Navigator.of(context).pop();
            },
            child: Text('ثبت'),
          ),
        ],
      ),
    );
  }
}
