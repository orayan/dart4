import 'package:audioplayers/audioplayers.dart';
import 'package:dart4/components/build_btn_animals.dart';
import 'package:dart4/components/image_animals.dart';
import 'package:dart4/utils/name_animals.dart';
import 'package:dart4/utils/path_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  // * image animal
  String image = PathImage.animals;
  // * audio
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          NameAnimals.animals.toUpperCase(),
          style: GoogleFonts.habibi(),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Image(image: AssetImage(PathImage.pawprint)),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              //*-- image
              ImageAnimals(
                image: image,
              ),
              //*-- line
              const Divider(
                thickness: 3,
                color: Colors.black,
                height: 0,
              ),
              //*-- buttons
              BuildBtnAnimals(
                callBack: changeState,
              )
            ],
          ),
        ),
      ),
    );
  }

  // Function
  void changeState({required String image, required String audio}) async {
    setState(() {
      this.image = image;
    });
    audioPlayer.stop();
    audioPlayer = await audioCache.play(audio);
  }
}
