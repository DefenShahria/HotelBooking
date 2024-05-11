import 'package:flutter/material.dart';

class Search_bar extends StatefulWidget {
  const Search_bar({
    super.key,
  });
  @override
  State<Search_bar> createState() => _Search_barState();
}
class _Search_barState extends State<Search_bar> {

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
          suffixIcon: const Icon(Icons.equalizer)
                )
            ),
    );
  }
}