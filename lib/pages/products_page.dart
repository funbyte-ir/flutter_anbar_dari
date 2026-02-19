import 'package:anbar_dari/dialogs/product_dialog.dart';
import 'package:anbar_dari/models/product.dart';
import 'package:anbar_dari/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<Product> products = [];

  void addProduct(String name, int count) {
    setState(() {
      Product product = Product(name, count);
      products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("محصولات"),
          backgroundColor: Colors.black12,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return ProductDialog(addProduct);
                  },
                );
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            ListView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Text(products[index].name);
              },
            ),
          ],
        ),
        drawer: AppDrawer(),
      ),
    );
  }
}
