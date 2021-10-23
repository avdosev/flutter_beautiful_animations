import 'package:flutter/material.dart';

import 'animated_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeItem(
            title: 'Акселерометер 1',
            buildPage: (_) => AccelerometerFirst(),
          ),
        ],
      ),
    );
  }
}

class HomeItem extends StatelessWidget {
  final WidgetBuilder buildPage;
  final String title;

  const HomeItem({
    Key? key,
    required this.buildPage,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: OutlinedButton(
        child: Text(title),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: buildPage));
        },
      ),
    );
  }
}
