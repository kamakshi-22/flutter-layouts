import 'package:flutter/material.dart';
import 'package:layouts/provider/screen_08_provider.dart';
import 'package:provider/provider.dart';

class Screen08 extends StatelessWidget {
  const Screen08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyFavScreen()));
              },
              icon: const Icon(
                Icons.heart_broken,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Consumer<Screen08Provider>(
                      builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        if (value.selectedItem.contains(index)) {
                          value.removeItem(index);
                        } else {
                          value.addItem(index);
                        }
                      },
                      title: Text(
                        "Heart $index",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.pink),
                      ),
                      trailing: Icon(
                        value.selectedItem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border_rounded,
                        size: 30,
                        color: Colors.pink,
                      ),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}

class MyFavScreen extends StatelessWidget {
  const MyFavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<Screen08Provider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favProvider.selectedItem.length,
                itemBuilder: (context, index) {
                  return Consumer<Screen08Provider>(
                      builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        if (value.selectedItem.contains(index)) {
                          value.removeItem(index);
                        } else {
                          value.addItem(index);
                        }
                      },
                      title: Text(
                        "Heart $index",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.pink),
                      ),
                      trailing: Icon(
                        value.selectedItem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border_rounded,
                        size: 30,
                        color: Colors.pink,
                      ),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
