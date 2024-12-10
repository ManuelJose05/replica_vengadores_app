import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:vengadores_app/presentation/widgets/character_slide_widget.dart';
import 'package:vengadores_app/presentation/widgets/expansion_title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedHero = '';
  @override
  Widget build(BuildContext context) {
    return BounceInLeft(
      animate: true,
      duration: Duration(seconds: 1),
      curve: Curves.linear,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2 - 100,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset('assets/images/background1.png',
                          fit: BoxFit.fill)),
                  Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ExpansionTitleWidget(),
                          Image.asset('assets/images/logo.png', width: 100),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search,
                                  size: 30, color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PERSONAJES DE MARVEL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Get hooked on a hearty helping of heroes and villains\nfrom the humble House of Ideas!',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/background2.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: CharacterSlideWidget(),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
