import 'package:flutter/material.dart';

class Screen01 extends StatelessWidget {
  const Screen01({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /* Header */
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.pinimg.com/564x/c3/2c/3a/c32c3a47bf7b09814a73c53eb5cb4faa.jpg'))),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 30,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/736x/9d/0a/e0/9d0ae024a598f9b0169a2f27741efdc3.jpg'),
                    ),
                  )
                ],
              ),

              /* Body */
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kiki\s Delivery Service \nOpen',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Aliqua ad nulla enim ad dolor fugiat',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      /* Icons */
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconText(
                              text: '20',
                              IconData: Icons.favorite_outline_rounded,
                            ),
                            IconText(
                              text: '34',
                              IconData: Icons.upload,
                            ),
                            IconText(
                              text: '82',
                              IconData: Icons.message,
                            ),
                            IconText(
                              text: '295',
                              IconData: Icons.face,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              const Divider(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Text(
                  'Irure aute ex ullamco duis sint. Quis id proident adipisicing magna laboris. Labore incididunt minim non consectetur sit pariatur ad consectetur qui excepteur occaecat sunt. Irure aute ex ullamco duis sint. Quis id proident adipisicing magna laboris. Labore incididunt minim non consectetur sit pariatur ad consectetur qui excepteur occaecat sunt.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class IconText extends StatelessWidget {
  final text;
  final IconData;
  const IconText({super.key, required this.text, required this.IconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        Icon(IconData)
      ],
    );
  }
}

/* 

Column
  - Stack
    - Container
    - Circular Avatar
  - Column
    - Text
    - Text
    - Row
      - Row x 4
        - Text
        - Icon
    - Text
 */
