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

              // 여기부터 그리드 뷰 예시 1: Count
              child: GridView.count(
                // 그리드 내부 한 개 Row에 몇 개 배치할지 `crossAxisCount` 값으로 정함
                //crossAxisCount: 2,
                crossAxisCount: 3,

                // 임의로 30 개 생성
                children: List.generate(100, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  );
                }),

                //   // 만들어놓은 ItemCard를 특정 갯수만 불러옴
                //   // children: List.generate(
                //   //   6,
                //   //   (index) => ItemCard(
                //   //     product: products[index],
                //   //     press: () => Navigator.push(
                //   //       context,
                //   //       MaterialPageRoute(
                //   //         builder: (context) => DetailsScreen(
                //   //           product: products[index],
                //   //         ),
                //   //       ),
                //   //     ),
                //   //   ),
                //   // ),
              ),
              // // 여기부터 그리드 뷰 예시 1: Count

              // 여기부터 그리드 뷰 예시 2: Extent
              // child: GridView.extent(
              //   // 그리드 내부 한 개 Row에 배치되는 요소의 Width 값을 지정하여 배치함
              //   maxCrossAxisExtent: 300.0, // 필수값
              //   crossAxisSpacing: 10, // 너무 붙어있어서 여백처리
              //   mainAxisSpacing: 10, // 너무 붙어있어서 여백처리
              //   children: List.generate(100, (index) {
              //     return Center(
              //       child: Text(
              //         'Item $index',
              //         style: Theme.of(context).textTheme.headline5,
              //       ),
              //     );
              //   }),
              // )
              // 여기까지 그리드 뷰 예시 2: Extent

              // 여기부터 그리드 뷰 예시 3: Builder
              // child: GridView.builder(
              //   itemCount: 6, // 6
              //   // 길이를 안넣어주면 무한대로 생성됨 ㅎㅎ;

              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     // Not Silver! Sliver!!
              //     // Delegate가 있다..
              //     // 그리드 요소들은 여기서 지정된 크기를 가지도록 강제됨.
              //     crossAxisCount: 2,
              //     mainAxisSpacing: defaultPadding,
              //     crossAxisSpacing: defaultPadding,
              //     childAspectRatio: 0.75,
              //   ),
              //   itemBuilder: (context, index) => ItemCard(
              //     product: products[index],
              //     press: () => Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => DetailsScreen(
              //           product: products[index],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // 여기까지 그리드 뷰 예시 3: Builder

              // 4: custom 방식은 아직 안써봤습니다.. ㅎㅎ;
            ),
          ),
        ]);
  }
}
