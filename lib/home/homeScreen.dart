import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jayga/data/color_plate.dart';

import '../data/state_holders/allpostcontroller.dart';
import 'homeScreenCard.dart';
import 'homepageSearchbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {



  List<bool> isPressedList = List.generate(4, (index) => false);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<AllpostController>().getAllpost();
    });
    super.initState();
  }


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
                SizedBox(
                  height: 60,
                  child: Row(
                    children: List.generate(
                      4, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              for (int i = 0; i < isPressedList.length; i++) {
                                isPressedList[i] = (i == index);
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: isPressedList[index] ? Appcolor.primarycolor : Appcolor.backgroundcolor,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 4,),
                                  Icon(Icons.window, color: isPressedList[index] ? Colors.white : Colors.black),
                                  Text('All', style: TextStyle(color: isPressedList[index] ? Colors.white : Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),
                GetBuilder<AllpostController>(
                  builder: (allpostController) {
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder:(context,index){
                      return HomePageCard(allpostdata: allpostController.allpostModelData.data![index],);
                    });
                  }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
