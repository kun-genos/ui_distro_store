import 'package:flutter/material.dart';
import 'package:ui_distro_app/data.dart';
import 'package:ui_distro_app/product_detail.dart';

class ItemWidget extends StatelessWidget {
  final Product data;

  const ItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ProductDetail(product: data);
          },
        ));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: data.image,
              child: Image.asset(data.image),
            ),
            const SizedBox(height: 6),
            Text(
              "Rp. ${data.price}",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 2),
            Text(
              data.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 2),
            Text(
              "stok : " + data.stok,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 4),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Row(
                children: [
                  Icon(
                    Icons.shopping_bag,
                    size: 20,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "Beli",
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.remove_circle_outline,
                    size: 18,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("0"),
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    size: 18,
                    color: Colors.blue,
                  )
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
