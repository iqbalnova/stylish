import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/utils/styles.dart';

class HorizontalListViewAvatar extends StatelessWidget {
  final List dataAvatar;
  final void Function(dynamic) onTap;

  const HorizontalListViewAvatar(
      {Key? key, required this.dataAvatar, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      color: whiteColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataAvatar.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              onTap(dataAvatar[index]);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 56.w,
                    height: 56.h,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                      image: DecorationImage(
                        image: NetworkImage(
                          dataAvatar[index]['imgUrl'],
                        ), // Placeholder image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(dataAvatar[index]['title'])
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
