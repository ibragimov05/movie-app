import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/utils/extension/sized_box_extension.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MovieFullInfo extends StatelessWidget {
  final String movieTeaser;
  final String movieRating;
  final String movieName;
  final String comeOutYear;
  final String country;
  final String genre;
  final String about;

  MovieFullInfo({
    super.key,
    required this.movieTeaser,
    required this.movieRating,
    required this.movieName,
    required this.comeOutYear,
    required this.country,
    required this.genre,
    required this.about,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1F32),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 360.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                      image: AssetImage(movieTeaser),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
              ),
              10.height(),
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250.w,
                      child: Text(
                        movieName,
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 19.w,
                          height: 19.h,
                          // color: Colors.blue,/
                          child: Image.asset('assets/icons/bookmark.png'),
                        ),
                        5.width(),
                        Container(
                          width: 19.w,
                          height: 19.h,
                          // color: Colors.blue,/
                          child: Image.asset('assets/icons/send.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              20.height(),
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFF820FE1),
                    ),
                    Text(
                      movieRating,
                      style: TextStyle(
                          color: Color(0xFF820FE1),
                          fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFF820FE1),
                      size: 15.sp,
                    ),
                    Text(
                      '  $comeOutYear  ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    containerMaker('13+'),
                    containerMaker(country),
                    containerMaker('Subtitle'),
                  ],
                ),
              ),
              20.height(),
              // Text('data', style: TextStyle(color: Colors.white),)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ZoomTapAnimation(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 10.w),
                      width: 160.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF820FE1),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_circle_fill_rounded,
                            color: Colors.white,
                            size: 18.sp,
                          ),
                          Text(
                            '  Play',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: 10.w),
                      width: 160.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                          color: Color(0xFF820FE1),
                          width: 2.w,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 26.w,
                              height: 26.h,
                              child: SvgPicture.asset(
                                  'assets/icons/download.svg')),
                          Text(
                            '  Download',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              15.height(),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Genre: $genre.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    5.height(),
                    Text(
                      about,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              10.height(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 1; i <= 5; i++)
                      movieCasts(
                        imagePath:
                            'https://randomuser.me/api/portraits/men/${i}.jpg',
                        personName: 'personName',
                        personRole: 'personRole',
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget containerMaker(String text) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
        top: 2.h,
        bottom: 2.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF820FE1),
          width: 1.5.sp,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF820FE1),
        ),
      ),
    );
  }

  Widget movieCasts({
    required String imagePath,
    required String personName,
    required String personRole,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10.w),
      child: Row(
        children: [
          Container(
            height: 40.h,
            width: 40.w,
            child: Image.network(imagePath),
          ),
        ],
      ),
    );
  }
}
