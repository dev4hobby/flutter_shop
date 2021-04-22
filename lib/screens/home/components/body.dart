import "package:flutter/material.dart";
import 'package:shopping/constants.dart';
import 'package:shopping/screens/details/details_screen.dart';
import 'package:shopping/screens/home/components/categories.dart';
import 'package:shopping/models/Product.dart';

import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text("Store",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: GridView.builder(
                itemCount: 6, // 길이를 안넣어주면 무한대로 생성됨 ㅎㅎ;
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // Delegate가 있다..
                  // 그리드 요소들은 여기서 지정된 크기를 가지도록 강제됨.
                  crossAxisCount: 2,
                  mainAxisSpacing: defaultPadding,
                  crossAxisSpacing: defaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]);
  }
}
