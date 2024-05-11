import 'package:flutter/material.dart';
import 'package:jayga/data/color_plate.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
      },
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://th.bing.com/th/id/R.775d401caa6eecbf38b07d36fe359f23?rik=yKqKYfz9rVVIfg&pid=ImgRaw&r=0'),
                    ),
                  ),
                ),
                const SizedBox(height: 8,)
              ],
            ),
          ),
          const Row(
            children: [
              Text('2 bedroom apartment ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
              Spacer(),
              Stack(
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

              Text('5.0')
            ],
          ),
          const Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Uttara, Dhaka',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                  Text('1 Bedroom + Patio + BT',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                ],
              ),
              Spacer(),
              Text('৳1749 / night')
            ],
          ),
          const Row(
            children: [
              Row(
                children: [
                  Text('Short Stay ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Appcolor.primarycolor),),
                  Text('available',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
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