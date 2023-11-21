import 'package:flutter/material.dart';

void main() {
  runApp(const ArticleCreator());
}

class ArticleCreator extends StatelessWidget {
  const ArticleCreator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple Article Creator',
      home: Scaffold(),
    );
  }
}
