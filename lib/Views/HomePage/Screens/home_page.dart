// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../remove_glow_effect.dart';
import '../Widgets/current_day_widget.dart';
import '../Widgets/home_page_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(41, 178, 221, 1),
              Color.fromRGBO(51, 170, 221, 1),
              Color.fromRGBO(45, 200, 234, 1),
              /*      Color.fromRGBO(8, 36, 79, 1),
                Color.fromARGB(255, 15, 63, 151),
                Color.fromRGBO(11, 66, 171, 1), */
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          )),
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
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
                      SvgPicture.asset(
                          'assets/Icons/has_notification_icon.svg'),
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
        ),
      ),
    );
  }
}
