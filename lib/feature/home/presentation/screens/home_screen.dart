import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_input.dart';
import 'package:stylish/feature/home/presentation/widgets/horizontal_listview_avatar_widget.dart';
import 'package:stylish/utils/constants.dart';
import 'package:stylish/utils/images.dart';
import 'package:stylish/utils/styles.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomInput(
              hintText: 'Search any Product..',
              prefixIcon: Icons.search,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
          HorizontalListViewAvatar(
            dataAvatar: DummyData.category,
            onTap: (data) {
              if (kDebugMode) {
                print(data);
              }
            },
          ),
          Container(
            height: 200,
            color: whiteColor,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey, // warna latar belakang
                    image: const DecorationImage(
                      image: AssetImage(Images.bannerHome),
                      fit: BoxFit.cover, // atur sesuai kebutuhan Anda
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('HALOXS'),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.all(10),
                  color: Colors.yellow,
                  child: Center(child: Text('Item $index')),
                );
              },
            ),
          ),
          Container(
            height: 200,
            color: Colors.orange,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  color: Colors.pink,
                  child: Center(child: Text('Item $index')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
