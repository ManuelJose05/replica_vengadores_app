import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:vengadores_app/presentation/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 12, 21),
      body: _SplasView(),
    );
  }
}

class _SplasView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: Duration(seconds: 1),
      animate: true,
      curve: Curves.linear,
      child: Column(
        children: [
          SizedBox(height: 100),
          Image.asset('assets/images/logo.png', width: 200),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 25,left: 15),
            child: Image.asset('assets/images/vengadores.png'),
          ),
          SizedBox(height: 100),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
            child: Column(
              children: [
                Image.asset('assets/images/logoVengadores.png', width: 110,),
                SizedBox(height: 10,),
                Text('Vengadores Unidos', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))
              ],
            )
          )
        ],
      ),
    );
  }
}