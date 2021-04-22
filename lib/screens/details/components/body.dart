import 'package:flutter/material.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/models/Product.dart';
import 'color_and_size.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 화면의 widgh, height를 얻어옴
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: defaultPadding,
                        right: defaultPadding),
                    // height: 500, // 하단 상세정보 없을때 시연을 위한 높이설정
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(product: product),
                      ],
                    )),
                ProductTitleWithImage(product: product)
              ],
            ))
      ],
    ));
  }
}
