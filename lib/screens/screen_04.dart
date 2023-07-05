import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';

class Screen04 extends StatefulWidget {
  const Screen04({super.key});

  @override
  State<Screen04> createState() => _Screen04State();
}

class _Screen04State extends State<Screen04> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: 'Search'),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
                label: 'Ticket'),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                label: 'Profile'),
          ]),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        )
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Styles.orangeColor,
                            border: Border.all(color: Colors.blueGrey)),
                        height: 50,
                        width: 50,
                        child: Transform.rotate(
                          angle: -0.5,
                          child: const Icon(
                              FluentSystemIcons.ic_fluent_airplane_filled),
                        ))
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Colors.orange.shade800),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights",
                        style: Styles.headLineStyle2
                            .copyWith(color: Colors.grey.shade900)),
                    Text("See All",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor)),
                  ],
                ),
                const Gap(15),
                const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TicketView(),
                        TicketView(),
                      ],
                    )),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hotels",
                        style: Styles.headLineStyle2
                            .copyWith(color: Colors.grey.shade900)),
                    Text("See All",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor)),
                  ],
                ),
                const Gap(15),
                const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HotelScreen(),
                        HotelScreen(),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: Styles.primaryColor, borderRadius: BorderRadius.circular(17)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1618773928121-c32242e63f39?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MHwxfHNlYXJjaHw3fHxob3RlbHxlbnwwfHx8fDE2ODg1NzA4MDF8MA&ixlib=rb-4.0.3&q=80&w=1080')),
                color: Styles.textColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 20,
                      spreadRadius: 5)
                ]),
          ),
          const Gap(10),
          Text(
            "Open Space",
            style: Styles.headLineStyle2.copyWith(color: Colors.white70),
          ),
          const Gap(5),
          Text(
            "London",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$40/night",
            style: Styles.headLineStyle1.copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.8,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(children: [
          /* Blue Part of the Card */
          Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Expanded(
                          child: Stack(children: [
                        Center(
                          child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(builder: (context, constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const Stack(children: [
                                        SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white),
                                            )),
                                      ])),
                            );
                          }),
                        ),
                      ])),
                      const Spacer(),
                      Text(
                        "LDN",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'New-York',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white70),
                        ),
                      ),
                      Text(
                        '8H 30M',
                        style: Styles.headLineStyle4
                            .copyWith(color: Colors.white70),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'London',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white70),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ))

          /* Orange Part of the Card */
          ,
          Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "1 May",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Expanded(
                          child: Center(
                              child: Text(
                        '08:00 AM',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ))),
                      const Spacer(),
                      Text(
                        "23",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Date',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white70),
                        ),
                      ),
                      Text(
                        'Departure Time',
                        style: Styles.headLineStyle4
                            .copyWith(color: Colors.white70),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Number',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white70),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ]),
      ),
    );
  }
}

/* ---------------------------------------------------------------- */
/*                            App Layout                            */
/* ---------------------------------------------------------------- */
class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}

/* ---------------------------------------------------------------- */
/*                              styles                              */
/* ---------------------------------------------------------------- */

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF526799);
  static Color orangeColor = const Color(0xFFF37B67);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
