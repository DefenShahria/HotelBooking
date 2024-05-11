import 'package:flutter/material.dart';
import 'package:jayga/data/color_plate.dart';

import 'homeScreenCard.dart';
import 'homepageSearchbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Appcolor.backgroundcolor,
        appBar: AppBar(
          backgroundColor: Appcolor.backgroundcolor,
          title: const Text(
            'Hello, Reza',
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            const Icon(Icons.notifications_none),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.segment_rounded)),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Find your next',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const Row(
                  children: [
                    Text('place ',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Appcolor.primarycolor)),
                    Text('to stay',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Search_bar(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                    )),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'or',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Center(
                    child: Text(
                  'Find all listings near your area',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Appcolor.primarycolor),
                )),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder:(context,index){
                  return HomePageCard();
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
