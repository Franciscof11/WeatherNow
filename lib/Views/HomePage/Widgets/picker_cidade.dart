// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class _PickerCidadeState extends State<PickerCidade> {
  getClimaAtual() async {
    final client = Dio(
      BaseOptions(baseUrl: 'http://api.weatherapi.com/v1/'),
    );
    final response = await client
        .get('current.json?key=0b7f509ff46c4700961134501231401&q=Sao Luis');
    print(response.data);
  }

  final List<String> items = [
    'Sao Luis',
    'Fortaleza',
    'Brasília',
    'Teste1',
    'Teste2',
    'Teste3',
    'Teste4',
    'Teste5',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: [
              SvgPicture.asset('assets/Icons/location_icon.svg',
                  color: Colors.lightBlue),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  'Cidade',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                    fontFamily: 'SFpro',
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/Icons/location_icon.svg',
                            color: Colors.lightBlue),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                              fontFamily: 'SFpro',
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
              getClimaAtual();
            });
          },
          icon: SvgPicture.asset(
            'assets/Icons/dropdown_icon.svg',
            width: 35,
          ),
          iconSize: 14,
          buttonHeight: 46,
          buttonWidth: 180,
          buttonPadding: const EdgeInsets.only(left: 32),
          buttonElevation: 2,
          itemHeight: 40,
          autofocus: true,
          dropdownDirection: DropdownDirection.left,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 130,
          dropdownWidth: 140,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}

class PickerCidade extends StatefulWidget {
  const PickerCidade({super.key});

  @override
  State<PickerCidade> createState() => _PickerCidadeState();
}
