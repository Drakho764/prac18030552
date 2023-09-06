import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:prac18030552/card_planet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Bienvenido",
      subtitle:"Instituto Tecnológico de Celaya",
      image: const AssetImage("assets/images/img-1.png"),
      backgroundColor:const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Color.fromARGB(255, 218, 20, 20),
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    CardPlanetData(
      title: "Nosotros",
      subtitle: "Ingeniería en Sistemas Computacionales",
      image: const AssetImage("assets/images/img-2.png"),
      backgroundColor: Colors.white,
      titleColor: Color.fromARGB(255, 0, 130, 182),
      subtitleColor: Color.fromARGB(255, 216, 195, 3),
      background: LottieBuilder.asset("assets/animation/bg-2.json"),
    ),
    CardPlanetData(
      title: "Instalaciones",
      subtitle: "Departamentos de Sistemas",
      image:const  AssetImage("assets/images/img-3.png"),
      backgroundColor:Color.fromARGB(255, 217, 249, 255),
      titleColor: Color.fromARGB(255, 255, 230, 1),
      subtitleColor: Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/animation/bg-3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
