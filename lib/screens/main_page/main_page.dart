import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/screens/main_page/widgets/movie_maker.dart';
import 'package:movie_app/utils/extension/sized_box_extension.dart';

class MainPage extends StatelessWidget {
  List<Map<String, dynamic>> movieInfo_ls = [
    {
      'movieTeaser': 'assets/images/page_1/avengers.jpg',
      'movieRating': '7.9',
    },
    {
      'movieTeaser': 'assets/images/page_1/avatar.jpg',
      'movieRating': '6.7',
    },
    {
      'movieTeaser': 'assets/images/page_1/guardians.jpg',
      'movieRating': '8.0',
    },
    {
      'movieTeaser': 'assets/images/page_1/infinitywar.jpg',
      'movieRating': '8.2',
    },
    {
      'movieTeaser': 'assets/images/page_1/ironman.jpg',
      'movieRating': '7.5',
    },
    {
      'movieTeaser': 'assets/images/page_1/prisoners.jpg',
      'movieRating': '8.7',
    },
    {
      'movieTeaser': 'assets/images/page_1/shawshank.jpg',
      'movieRating': '8.3',
    },
    {
      'movieTeaser': 'assets/images/page_1/spiderman.jpg',
      'movieRating': '7.8',
    },
    {
      'movieTeaser': 'assets/images/page_1/truman.jpg',
      'movieRating': '8.5',
    },
  ];

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF14191E),
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color(0xFF14191E),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.w),
              width: 280.w,
              height: 45.h,
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E28),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.search,
                    color: Color(0xFF494B4E),
                  ),
                  10.width(),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: const Color(0xFF494B4E),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                color: const Color(0xFF28191E),
                borderRadius: BorderRadius.circular(10.r),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.height(),
            Wrap(
              runSpacing: 10.w,
              spacing: 10.h,
              children: [
                for (int i = 0; i < movieInfo_ls.length; i++)
                  MovieMaker(
                    movieTeaser: movieInfo_ls[i]['movieTeaser'],
                    movieRating: movieInfo_ls[i]['movieRating'],
                    indexOfTappedMovie: i,
                  ),
              ],
            ),
            20.height(),
          ],
        ),
      ),
      floatingActionButton: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            width: 335.w,
            height: 40.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, color: Colors.grey, size: 30.sp),
                Icon(Icons.explore, color: Colors.grey, size: 30.sp),
                Icon(Icons.bookmark_border_rounded,
                    color: Colors.grey, size: 30.sp),
                Icon(Icons.download, color: Colors.grey, size: 30.sp),
                Icon(Icons.person, color: Colors.grey, size: 30.sp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
