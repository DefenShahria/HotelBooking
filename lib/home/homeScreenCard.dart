import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jayga/data/color_plate.dart';

import '../data/models/allpostModel.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    Key? key,
    required this.allpostdata,
  }) : super(key: key);
  final AllpostData allpostdata;

  @override
  Widget build(BuildContext context) {
    String? jsonString = allpostdata.photos;
    List<String> Images = [];
    if (jsonString != null) {
      List<dynamic> data = jsonDecode(jsonString);
      Images = data
          .map<String>((item) => item['location'].replaceAll('\\', ''))
          .toList();
      print(Images);
    }

    bool react = false;

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {},
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              NetworkImage(Images.isNotEmpty ? Images[0] : ''),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: IconButton(
                          onPressed: () {
                              if (react == true) {
                                react = false;
                              } else {
                                react = true;
                              }
                          },
                          icon: Icon(
                            react ? Icons.favorite : Icons.favorite_border,
                            size: 30,
                            color: react ? Colors.redAccent : Colors.white,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                '${allpostdata.categoryName} ',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              const Stack(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.black12,
                    size: 27,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 25,
                  ),
                ],
              ),
              const Text('5.0')
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${allpostdata.areaName}',
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    '1 Bedroom + Patio + BT',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              const Text('৳1749 / night')
            ],
          ),
          const Row(
            children: [
              Row(
                children: [
                  Text(
                    'Short Stay ',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Appcolor.primarycolor),
                  ),
                  Text(
                    'available',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Spacer(),
              Text('৳749 / slot')
            ],
          ),
        ],
      ),
    );
  }
}
