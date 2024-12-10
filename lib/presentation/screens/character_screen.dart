import 'package:flutter/material.dart';
import 'package:vengadores_app/constants.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key, required this.index});
  final index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0C11),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.height / 2,
                child: Image.asset(characterList[index]['imgUrl']!, fit: BoxFit.fill,)
              ),
              Positioned(
                top: 50,
                child: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios,
                size: 30, color: Colors.white,))),
              Positioned(
                bottom: 10,
                left: 10,
                child: Image.asset('assets/images/nametag.png')),
              Positioned(
                bottom: 25,
                left: 10,
                child: Text(characterList[index]['real_name']!, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(characterList[index]['hero_name']!.toUpperCase(),
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 10,),
                  Text(characterList[index]['description']!,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  NewsCard(0),
                  NewsCard(1),
                  NewsCard(2),
                ],
              )),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final index;
  NewsCard(this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2 - 25,
            child: Image.asset(latestNews[index]['imgUrl']!),
          ),
          SizedBox(width: 10,),
          Container(
            width: MediaQuery.of(context).size.width / 2 - 25,
            child: Column(
              children: [
                Text(latestNews[index]['tag']!,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 16,),
                Text(latestNews[index]['title']!,style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.justify,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}