import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vengadores_app/constants.dart';
import 'package:vengadores_app/presentation/screens/character_screen.dart';

class CharacterSlideWidget extends StatefulWidget {
  const CharacterSlideWidget({super.key});

  @override
  State<CharacterSlideWidget> createState() => _CharacterSlideWidgetState();
}

class _CharacterSlideWidgetState extends State<CharacterSlideWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
          height: 340, viewportFraction: 0.6, enlargeCenterPage: true),
      itemCount: characterList.length,
      itemBuilder: (context, index, realIndex) =>
          CharacterCard(cardIndex: index),
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.cardIndex});
  final cardIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => CharacterScreen(index: cardIndex,)));
      },
      child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(40),
          ),
          child: Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      child: Image.asset(
                        characterList[cardIndex]['imgUrl']!,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                Container(
                    height: 5,
                    color: Colors.red,
                    width: MediaQuery.of(context).size.width / 2 - 40
                    ),
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              characterList[cardIndex]['hero_name']!
                                  .toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          Text(
                              characterList[cardIndex]['real_name']!
                                  .toUpperCase(),
                              style: TextStyle(color: Colors.white, fontSize: 12)),
                        ]),
                  ),
                ),
              ]
              ))),
    );
  }
}
