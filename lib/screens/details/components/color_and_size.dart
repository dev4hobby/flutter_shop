import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/models/Product.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0x5F36CF95)),
                  ColorDot(color: Color(0x5FFC9356)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: defaultTextColor),
              children: [
                TextSpan(
                  text: "Size\n",
                ),
                TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
