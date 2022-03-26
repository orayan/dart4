import 'package:dart4/components/btn_animal.dart';
import 'package:dart4/utils/name_animals.dart';
import 'package:dart4/utils/path_icons.dart';
import 'package:flutter/material.dart';

class BuildBtnAnimals extends StatelessWidget {
  const BuildBtnAnimals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(left: 5),
      child: Column(
        children: [
          //* line One
          Row(children: [
            BtnAnimal(
              name: NameAnimals.lion,
              icon: PathIcons.lion,
              onClick: () {
                print('lion');
              },
            ),
            BtnAnimal(
              name: NameAnimals.cheetah,
              color: Colors.orange,
              icon: PathIcons.cheetah,
              onClick: () {
                print('cheetah');
              },
            ),
            BtnAnimal(
              name: NameAnimals.wolf,
              icon: PathIcons.wolf,
              onClick: () {
                print('wolf');
              },
            )
          ]),
          //* line Two
          Row(
            children: [],
          ),
          //* line Three
          Row(
            children: [],
          )
        ],
      ),
    ));
  }
}
