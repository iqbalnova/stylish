import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/feature/core/presentation/widgets/custom_button.dart';
import 'package:stylish/utils/images.dart';
import 'package:stylish/utils/styles.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '50-40% OFF',
                    style: whiteTextStyle.merge(boldStyle),
                  ),
                  Text(
                    'Now in (product)',
                    style: whiteTextStyle,
                  ),
                  Text(
                    'All colours',
                    style: whiteTextStyle,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 130,
                    child: CustomButton(
                      onTap: () {
                        if (kDebugMode) {
                          print('Shopping!');
                        }
                      },
                      label: 'Shop Now',
                      isArrowButton: true,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
