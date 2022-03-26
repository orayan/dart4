import 'package:dart4/components/btn_animal.dart';
import 'package:dart4/utils/name_animals.dart';
import 'package:dart4/utils/path_audios.dart';
import 'package:dart4/utils/path_icons.dart';
import 'package:dart4/utils/path_images.dart';
import 'package:flutter/material.dart';

class BuildBtnAnimals extends StatelessWidget {
  const BuildBtnAnimals({Key? key, required this.callBack}) : super(key: key);
  final Function({required String image, required String audio}) callBack;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      child: Column(
        children: [
          //* line One
          Row(children: [
            BtnAnimal(
              name: NameAnimals.lion,
              icon: PathIcons.lion,
              onClick: () =>
                  callBack(image: PathImage.lion, audio: PathAudio.lion),
            ),
            BtnAnimal(
              name: NameAnimals.cheetah,
              color: Colors.orange,
              icon: PathIcons.cheetah,
              onClick: () =>
                  callBack(image: PathImage.cheetah, audio: PathAudio.cheetah),
            ),
            BtnAnimal(
              name: NameAnimals.wolf,
              icon: PathIcons.wolf,
              onClick: () =>
                  callBack(image: PathImage.wolf, audio: PathAudio.wolf),
            )
          ]),
          //* line Two
          Row(
            children: [
              BtnAnimal(
                name: NameAnimals.elephant,
                icon: PathIcons.elephant,
                color: Colors.orange,
                onClick: () => callBack(
                    image: PathImage.elephant, audio: PathAudio.elephant),
              ),
              BtnAnimal(
                name: NameAnimals.giraffe,
                icon: PathIcons.giraffe,
                onClick: () => callBack(
                    image: PathImage.giraffe, audio: PathAudio.giraffe),
              ),
              BtnAnimal(
                name: NameAnimals.crocodile,
                icon: PathIcons.crocodile,
                color: Colors.orange,
                onClick: () => callBack(
                    image: PathImage.crocodile, audio: PathAudio.crocodile),
              )
            ],
          ),
          //* line Three
          Row(
            children: [
              BtnAnimal(
                name: NameAnimals.cat,
                icon: PathIcons.cat,
                onClick: () =>
                    callBack(image: PathImage.cat, audio: PathAudio.cat),
              ),
              BtnAnimal(
                name: NameAnimals.dog,
                color: Colors.orange,
                icon: PathIcons.dog,
                onClick: () =>
                    callBack(image: PathImage.dog, audio: PathAudio.dog),
              ),
              BtnAnimal(
                name: NameAnimals.parrot,
                icon: PathIcons.parrot,
                onClick: () =>
                    callBack(image: PathImage.parrot, audio: PathAudio.parrot),
              )
            ],
          )
        ],
      ),
    );
  }
}
