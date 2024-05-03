import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 350,
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    width: 1,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(255, 85, 67, 60)),
                ),
                hintText: "Coffee shop, beer & wine...",
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(204, 85, 67, 60),
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: Image.asset("assets/images/filter.png"),
                prefixIcon: Image.asset("assets/images/search.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
