import 'package:flutter/material.dart';

class ChipModel {
  final String title;
  final bool selected;
  final String image;

  ChipModel(this.title, this.selected, this.image);
}

class ChipItem extends StatelessWidget {
  const ChipItem({
    super.key,
    required this.chipModel,
  });
  final ChipModel chipModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            color: chipModel.selected
                ? const Color.fromARGB(255, 169, 124, 55)
                : const Color.fromARGB(255, 29, 25, 23),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(color: Colors.grey),
          ),
          width: 94.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(chipModel.image),
              const SizedBox(
                width: 3,
              ),
              Text(
                chipModel.title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Gilroy',
                  color: chipModel.selected
                      ? Colors.white
                      : const Color.fromARGB(128, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ChipList extends StatelessWidget {
  ChipList({super.key});
  var item = [
    ChipModel("Coffee", true, "assets/images/coffee.png"),
    ChipModel("Beer", false, "assets/images/bierre.png"),
    ChipModel("Wine Bar", false, "assets/images/vin.png"),
    ChipModel("Events", false, "assets/images/event.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 36.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.length, //list.length expected two or three
        itemBuilder: (BuildContext context, int index) {
          return ChipItem(
            chipModel: item[index],
          );
        },
      ),
    );
  }
}
