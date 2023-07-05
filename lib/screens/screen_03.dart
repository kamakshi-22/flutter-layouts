import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen03 extends StatelessWidget {
  const Screen03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 250,
          decoration: BoxDecoration(boxShadow: AppColors.shadows),
          child: const CardContent(),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              right: -150,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1)),
              )),
          Positioned(
              left: -200,
              bottom: -450,
              child: Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1)),
              )),
          Positioned(
              top: 25,
              left: 25,
              child: Container(
                height: 30,
                width: 60,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.freepnglogos.com/uploads/visa-card-logo-9.png'))),
              )),
          Positioned(
            top: 55,
            left: 30,
            child: Text(
              'it \'s wkhere you want to be',
              style: GoogleFonts.mada(
                  color: Colors.grey.shade900,
                  fontSize: 14,
                  fontStyle: FontStyle.italic),
            ),
            
            
          ),
          
          
          Positioned(
            bottom: 55,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('5678 4980 3673 8976',
                    style: GoogleFonts.sourceCodePro(
                      color: const Color.fromARGB(237, 26, 26, 26),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text('Jane Doe'.toUpperCase(),
                    style: GoogleFonts.sourceCodePro(
                        color: const Color.fromARGB(237, 26, 26, 26),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5)),
              ],
            ),
          ),
          Positioned(
              top: 25,
              right: 25,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.icons8.com/?size=512&id=30435&format=png'))),
              ))
        ],
      ),
    );
  }
}

class AppColors {
  static Color bgColor = Colors.green.shade200;

  static List<BoxShadow> shadows = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: const Offset(-5, -5),
        blurRadius: 25),
    BoxShadow(
        color: Colors.green.shade900.withOpacity(0.2),
        spreadRadius: 2,
        offset: const Offset(7, 7),
        blurRadius: 20),
  ];
}
