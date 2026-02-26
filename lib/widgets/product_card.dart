import 'package:anbar_dari/dialogs/price_dialog.dart';
import 'package:anbar_dari/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  ProductCard(this.product);

  Product product;

  @override
  State<StatefulWidget> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.product.name),
        subtitle: Text("قیمت " + widget.product.price.toString() + " تومان"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  widget.product.count++;
                });
              },
              icon: Icon(Icons.add),
            ),
            Text(widget.product.count.toString()),
            IconButton(
              onPressed: () {
                setState(() {
                  if (widget.product.count > 0) {
                    widget.product.count--;
                  }
                });
              },
              icon: Icon(Icons.remove),
            ),

            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return PriceDialog(widget.product, changePrice);
                  },
                );
              },
              icon: Icon(Icons.attach_money_rounded),
            ),
          ],
        ),
      ),
    );
  }

  void changePrice(Product product, int newPrice) {
    product.price = newPrice;
    setState(() {});
  }

  // Widget callDialog(BuildContext context) => PriceDialog(widget.product);
}
