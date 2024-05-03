import 'package:coffee_taste/app/data/coffee.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({
    super.key,
    required this.chipModel,
  });
  final CoffeeModel chipModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Container(
          height: 150,
          width: 190,
          decoration: BoxDecoration(
            color: chipModel.isSelected
                ? const Color.fromARGB(255, 85, 67, 60)
                : const Color.fromARGB(255, 39, 34, 32),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Center(
            child: Row(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 76,
                    width: 76,
                    decoration: BoxDecoration(
                      color: chipModel.isSelected
                          ? const Color.fromARGB(255, 169, 124, 55)
                          : const Color.fromARGB(255, 55, 48, 45),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                      // border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Image.asset(chipModel.image),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Center(
                        child: Text(
                          chipModel.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          chipModel.price,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 169, 124, 55),
                            fontSize: 12,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class CoffeeVerticalList extends StatelessWidget {
  const CoffeeVerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffee2.length, //list.length expected two or three
        itemBuilder: (BuildContext context, int index) {
          return CoffeeItem(
            chipModel: coffee2[index],
          );
        },
      ),
    );
  }
}
