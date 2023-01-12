// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../remove_glow_effect.dart';
import 'current_day_widget.dart';
import 'home_page_text.dart';

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 25),
              Row(
                children: [
                  SizedBox(width: 25),
                  SvgPicture.asset('assets/Icons/location_icon.svg'),
                  SizedBox(width: 8),
                  HomePageText(
                    data: 'Maranhão',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 2),
                  SvgPicture.asset(
                    'assets/Icons/dropdown_icon.svg',
                    width: 35,
                  ),
                  SizedBox(width: 150),
                  SvgPicture.asset('assets/Icons/has_notification_icon.svg'),
                ],
              ),
              SizedBox(height: 15),
              Lottie.network(
                  'https://assets5.lottiefiles.com/temp/lf20_HflU56.json'),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: HomePageText(
                  data: '30°',
                  fontSize: 68,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              HomePageText(
                data: 'Max.: 34ºc   Min.: 28ºc',
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 30),
              CurrentDayWidget(),
              SizedBox(height: 25),
              CurrentDayWidget(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}
