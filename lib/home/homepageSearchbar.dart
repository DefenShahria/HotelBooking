import 'package:flutter/material.dart';
import 'package:jayga/data/color_plate.dart';

class Search_bar extends StatefulWidget {
  const Search_bar({
    super.key,
  });
  @override
  State<Search_bar> createState() => _Search_barState();
}
class _Search_barState extends State<Search_bar> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon:  const Icon(Icons.search_rounded, size: 25,),
                hintText: 'Search for places',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
            suffixIcon: IconButton(
              onPressed: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2200),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        colorScheme: ColorScheme.light(
                          primary: Appcolor.primarycolor, // Change the primary color of the calendar
                          onPrimary: Colors.white, // Change the text color on the primary color
                          surface: Colors.grey, // Change the background color of the calendar
                        ),
                        textButtonTheme: TextButtonThemeData(
                          style: TextButton.styleFrom(
                            primary: Appcolor.primarycolor, // Change the text color of buttons
                          ),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
              },
              icon: Icon(Icons.calendar_month_outlined),
            )

        )
            ),
    );
  }
}