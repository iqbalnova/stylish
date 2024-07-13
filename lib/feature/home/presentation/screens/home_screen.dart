import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stylish/feature/home/presentation/widgets/banner_widget.dart';
import 'package:stylish/feature/home/presentation/widgets/flashsale_section.dart';
import 'package:stylish/feature/home/presentation/widgets/gridview_product.dart';
import 'package:stylish/feature/home/presentation/widgets/horizontal_listview_avatar_widget.dart';
import 'package:stylish/feature/home/presentation/widgets/search_widget.dart';
import 'package:stylish/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SearchWidget(),
          HorizontalListViewAvatar(
            dataAvatar: DummyData.category,
            onTap: (data) {
              if (kDebugMode) {
                print(data);
              }
            },
          ),
          const BannerWidget(),
          const FlashSaleSection(items: DummyData.flashSaleItems),
          const GridviewProduct(items: DummyData.featuredProductItems),
        ],
      ),
    );
  }
}
