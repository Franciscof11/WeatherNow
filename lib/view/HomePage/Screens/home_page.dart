// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:app/controller/weather_repository.dart';
import 'package:app/model/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../remove_glow_effect.dart';
import '../Widgets/current_day_widget.dart';
import '../Widgets/current_weather_animation.dart';
import '../Widgets/home_page_text.dart';
import '../Widgets/picker_cidade.dart';

final weatherProvider = FutureProvider<Weather>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getCurrentWeather('Sao Luis');
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherProvider);
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          displacement: 85,
          onRefresh: () => ref.refresh(weatherProvider.future),
          child: weather.when(
            data: (data) {
              return Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(41, 178, 221, 1),
                      Color.fromRGBO(51, 170, 221, 1),
                      Color.fromRGBO(45, 200, 234, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  )),
                  child: RemoveGlowEffect(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PickerCidade(),
                            ],
                          ),
                          SizedBox(height: 5),
                          CurrentWeatherAnimation(
                              weatherAnimation: 'cloud_and_sun'),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: GestureDetector(
                              onTap: () {},
                              child: weather.when(
                                data: (data) {
                                  return HomePageText(
                                    data: '${data.location!.localtime}ºc',
                                    fontSize: 68,
                                    fontWeight: FontWeight.w600,
                                  );
                                },
                                error: (erro, _) {
                                  return HomePageText(
                                    data: 'erro',
                                    fontSize: 68,
                                    fontWeight: FontWeight.w600,
                                  );
                                },
                                loading: () {
                                  return CircularProgressIndicator();
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          HomePageText(
                            data: weather.when(data: (data) {
                              return 'Sensação térmica: ${data.current!.sensaTermica.toString()}ºc';
                            }, error: (erro, _) {
                              return 'a';
                            }, loading: () {
                              return '...';
                            }),
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
                  ));
            },
            error: (erro, _) {
              return Center(
                child: Text(erro.toString()),
              );
            },
            loading: () {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
