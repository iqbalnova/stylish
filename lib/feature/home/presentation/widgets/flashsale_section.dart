import 'package:flutter/material.dart';
import 'package:stylish/utils/styles.dart';

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({super.key, required this.items});

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Flash Sale',
              style: blackTextStyle.merge(boldStyle),
            ),
          ),
        ),
        Container(
          height: 200,
          color: const Color(0xffFFA3B3),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              final discountedPrice =
                  double.parse(item["price"]) * (1 - item["discount"] / 100);

              return Container(
                width: 140,
                margin: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        item["imageUrl"],
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item["title"],
                                style: blackTextStyle.merge(semiBoldStyle),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "\$${discountedPrice.toStringAsFixed(2)}",
                                style: blackTextStyle.merge(semiBoldStyle),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$${item["price"]}",
                                    style: blackTextStyle.copyWith(
                                      color: greyColor,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text(
                                    " ${item["discount"]}% off",
                                    style: redTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
