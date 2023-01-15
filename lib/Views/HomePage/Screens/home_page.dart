// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../remove_glow_effect.dart';
import '../Widgets/current_day_widget.dart';
import '../Widgets/home_page_text.dart';
import '../Widgets/picker_cidade.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
            child: RemoveGlowEffect(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    Row(
                      children: [
                        PickerCidade(),
                        SizedBox(width: 60),
                        SvgPicture.asset(
                            'assets/Icons/has_notification_icon.svg'),
                      ],
                    ),
                    SizedBox(height: 5),
                    Lottie.network(
                        'https://assets5.lottiefiles.com/temp/lf20_HflU56.json'),
                    SizedBox(height: 5),
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
            )),
      ),
    );
  }
}
