import 'package:flutter/material.dart';

class Screen02 extends StatelessWidget {
  const Screen02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'yuii.s',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 24,
        ),
      ),
      body: const Column(
        children: [
          Header(),
          Highlights(),
          SizedBox(height: 20),
          Divider(),
          Tabbar(),
          SizedBox(height: 20),
          ItemsGrid(),
        ],
      ),
    );
  }
}

class ItemsGrid extends StatelessWidget {
  const ItemsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(4),
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/46/b5/6f/46b56f087b6af02e984ed75da0faf02c.gif'))),
              );
            }),
      ),
    );
  }
}

class Tabbar extends StatelessWidget {
  const Tabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: TabBar(
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            dividerColor: Colors.grey,
            tabs: [
              Tab(
                text: 'Email',
              ),
              Tab(
                text: 'Site',
              ),
              Tab(
                text: 'Phone',
              ),
            ]),
      ),
    );
  }
}

class Highlights extends StatelessWidget {
  const Highlights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink, width: 2),
                    shape: BoxShape.circle),
                padding: const EdgeInsets.all(4),
                child: const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.add_rounded),
                ),
              ),
              const Text(
                'New',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          HighlightDetails(
              'https://i.pinimg.com/474x/a8/b3/f0/a8b3f0052581de7f5e91eb2f4d73e17b.jpg',
              'Mugi'),
          HighlightDetails(
              'https://i.pinimg.com/564x/fa/fc/f2/fafcf2a691d40f630eb816dba2abe447.jpg',
              'Yui'),
          HighlightDetails(
              'https://i.pinimg.com/564x/9d/e0/86/9de08628ccf93de963fd79098ac3301a.jpg',
              'Ritsu'),
          HighlightDetails(
              'https://i.pinimg.com/564x/c5/16/e2/c516e2ce10f220bb8668bd5271fcc43c.jpg',
              'Mio')
        ],
      ),
    );
  }

  Widget HighlightDetails(String url, String text) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.pink, width: 2),
                shape: BoxShape.circle),
            padding: const EdgeInsets.all(4),
            child: CircleAvatar(
              backgroundImage: NetworkImage(url),
              radius: 30,
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: 180,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.yellow,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/00/69/59/0069595f84b0f992a913b3a73a2cce61.jpg'),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Yui hirasawa',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Photographer / Tokyo',
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StatsDetails('150', 'Posts'),
                        StatsDetails('5k', 'Followers'),
                        StatsDetails('100', 'Following'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.pink),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple, width: 2),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.arrow_downward_rounded))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget StatsDetails(String title, subtitle) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 16, color: Colors.pink),
        )
      ],
    );
  }
}
