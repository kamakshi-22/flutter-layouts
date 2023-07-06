import 'package:flutter/material.dart';

class Screen05 extends StatefulWidget {
  const Screen05({super.key});

  @override
  State<Screen05> createState() => _Screen05State();
}

class _Screen05State extends State<Screen05> {
  List images = [
    'https://images.unsplash.com/photo-1517210122415-b0c70b2a09bf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw3fHxwaW5rfGVufDB8fHx8MTY4ODYxMzc0NXww&ixlib=rb-4.0.3&q=80&w=1080',
    'https://images.unsplash.com/photo-1582794543462-0d7922e50cf5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw2fHxwaW5rfGVufDB8fHx8MTY4ODYxMzc0NXww&ixlib=rb-4.0.3&q=80&w=1080',
    'https://images.unsplash.com/photo-1589307004173-3c95204d00ee?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHwxOXx8cGlua3xlbnwwfHx8fDE2ODg2MTM3NDV8MA&ixlib=rb-4.0.3&q=80&w=1080'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(images[index]),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trips",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Mountains",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 250,
                        child: Text(
                            "Ullamco cupidatat sint esse id. Tempor sit voluptate tempor fugiat deserunt aute commodo. Exercitation voluptate laboris eu irure consectetur.",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 30),
                      ResponsiveButton(
                        width: 120,
                      )
                    ],
                  ),
                  Column(
                      children: List.generate(3, (indexDots) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 4),
                      width: 8,
                      height: index == indexDots ? 25 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == indexDots
                            ? Colors.pink
                            : Colors.pink.shade900,
                      ),
                      
                    );
                  }))
                ],
              ),
            ));
      },
    ));
  }
}

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.isResponsive = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Center(
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          weight: 20,
          color: Colors.pink,
        ),
      ),
    );
  }
}
