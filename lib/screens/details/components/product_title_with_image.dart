import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Good for you",
            style: TextStyle(color: Colors.white),
          ),
          Text(product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                      text: "\₩ ${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                child: Image.asset(product.image,
                    fit: BoxFit.fill), // BoxFit.fitWidth or BoxFit.fill
              )
            ],
          )
        ],
      ),
    );
  }
}
