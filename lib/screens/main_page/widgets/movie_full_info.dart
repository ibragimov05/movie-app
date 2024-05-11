import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/screens/main_page/tab_bar/comments.dart';
import 'package:movie_app/screens/main_page/tab_bar/more_like_this.dart';
import 'package:movie_app/screens/main_page/tab_bar/trailers.dart';
import 'package:movie_app/utils/extension/sized_box_extension.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MovieFullInfo extends StatefulWidget {
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
  State<MovieFullInfo> createState() => _MovieFullInfoState();
}

class _MovieFullInfoState extends State<MovieFullInfo> {
  List<Map<String, dynamic>> movieCasts_ls = [
    {
      'name': 'Sam Worthington',
      'cast': 'main protagonist',
    },
    {
      'name': 'Zoe Saldana',
      'cast': 'Na\'vi princess',
    },
    {
      'name': 'Sigourney Weaver',
      'cast': 'Scientist',
    },
    {
      'name': 'Stephen Lang',
      'cast': 'Antagonist',
    },
    {
      'name': 'Michelle Rodriguez',
      'cast': 'Pilot',
    },
  ];

  Color color1 = const Color(0xFF820FE1);
  Color color2 = Colors.grey;
  Color color3 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1F32),
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
                    image: AssetImage(widget.movieTeaser),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              10.height(),
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250.w,
                      child: Text(
                        widget.movieName,
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 19.w,
                          height: 19.h,
                          child: Image.asset('assets/icons/bookmark.png'),
                        ),
                        5.width(),
                        SizedBox(
                          width: 19.w,
                          height: 19.h,
                          child: Image.asset('assets/icons/send.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              20.height(),
              Container(
                padding: EdgeInsets.only(
                  left: 10.w,
                  right: 25.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFF820FE1),
                    ),
                    Text(
                      widget.movieRating,
                      style: const TextStyle(
                        color: Color(0xFF820FE1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: const Color(0xFF820FE1),
                      size: 15.sp,
                    ),
                    Text(
                      '  ${widget.comeOutYear}  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    containerMaker('13+'),
                    containerMaker(widget.country),
                    containerMaker('Subtitle'),
                  ],
                ),
              ),
              20.height(),
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
                        color: const Color(0xFF820FE1),
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
                          const Text(
                            '  Play',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
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
                          color: const Color(0xFF820FE1),
                          width: 2.w,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 26.w,
                            height: 26.h,
                            child:
                                SvgPicture.asset('assets/icons/download.svg'),
                          ),
                          const Text(
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
                      'Genre: ${widget.genre}.',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    5.height(),
                    Text(
                      widget.about,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              20.height(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 1; i <= movieCasts_ls.length; i++)
                      movieCasts(
                        imagePath:
                            'https://randomuser.me/api/portraits/men/${i}.jpg',
                        personName: '${movieCasts_ls[i - 1]['name']}',
                        personRole: '${movieCasts_ls[i - 1]['cast']}',
                      ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      setState(
                        () {
                          color1 = const Color(0xFF820FE1);
                          color2 = Colors.grey;
                          color3 = Colors.grey;
                        },
                      );
                      const Trailers();
                    },
                    child: Container(
                      width: 119.h,
                      height: 50.w,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: color1, width: 2.sp),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Trailers',
                          style: TextStyle(
                            color: const Color(0xFF820FE1),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        color2 = const Color(0xFF820FE1);
                        color1 = Colors.grey;
                        color3 = Colors.grey;
                      });
                      const MoreLikeThis();
                    },
                    child: Container(
                      width: 119.h,
                      height: 50.w,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: color2, width: 2.sp),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'More Like This',
                          style: TextStyle(
                            color: const Color(0xFF820FE1),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        color3 = const Color(0xFF820FE1);
                        color1 = Colors.grey;
                        color2 = Colors.grey;
                      });
                      const Comments();
                    },
                    child: Container(
                      width: 119.h,
                      height: 50.w,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: color3, width: 2.sp),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Comments',
                          style: TextStyle(
                            color: const Color(0xFF820FE1),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              20.height(),
              trailerMaker(3, '1m 45s'),
              trailerMaker(2, '2m 03s'),
              trailerMaker(1, '1m 07s'),
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
          color: const Color(0xFF820FE1),
          width: 1.5.sp,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(
        text,
        style: const TextStyle(
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
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imagePath),
              ),
            ),
          ),
          10.width(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                personName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                personRole,
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.9),
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget trailerMaker(int index, String min) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h, left: 10.w),
      child: Row(
        children: [
          Image.asset(
            'assets/images/page_1/avatar.jpg',
            width: 70.w,
            height: 100.h,
          ),
          30.width(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trailer $index: Final',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              10.height(),
              Text(
                min,
                style: const TextStyle(color: Colors.white),
              ),
              10.height(),
              Container(
                padding: EdgeInsets.all(5.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.r),
                  color: const Color(0xFF28191E),
                ),
                child: Text(
                  'Update',
                  style: TextStyle(
                    color: const Color(0xFF5B148A),
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
