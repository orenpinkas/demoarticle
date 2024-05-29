import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  final imageSrc =
      "https://www.coindesk.com/resizer/x9N8qbM5iTaf0jvVdmZla3HHwy4=/560x395/filters:quality(80):format(jpg)/cloudfront-us-east-1.images.arcpublishing.com/coindesk/VAEPHCB7QRG5FJ3WWYBEOACDI4.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The Onion Bitcoiner'),
          backgroundColor: Colors.red[200],
          scrolledUnderElevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                imageSrc,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Random middle-aged Japanese guy accused of being Satoshi Nakamoto',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Sub-header',
                      style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nisl eros, pulvinar facilisis justo mollis, auctor consequat urna. Morbi a bibendum metus. Donec scelerisque sollicitudin enim eu venenatis. Duis tincidunt laoreet ex, in pretium orci vestibulum eget.',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla facilisi. Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in interdum dolor.',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Quisque quis turpis ac arcu condimentum fermentum. Donec scelerisque sollicitudin enim eu venenatis. Duis tincidunt laoreet ex, in pretium orci vestibulum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: OutbrainWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OutbrainWidget extends StatelessWidget {
  final List<String> recommendations = [
    "placeholder",
    "recommendations",
    "for",
    "articles",
  ];
  final Random rand = Random();

  Color getRandomColor() {
    return Color.fromARGB(
      rand.nextInt(256),
      rand.nextInt(256),
      rand.nextInt(256),
      rand.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: recommendations.map((str) => Text(
          str,
          style: TextStyle(backgroundColor: getRandomColor(), fontSize: 16),
        )).toList()
      )
    );
  }
}
