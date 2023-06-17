import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cached Network Image Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageComparisonPage(),
    );
  }
}

class ImageComparisonPage extends StatefulWidget {
  const ImageComparisonPage({Key? key}) : super(key: key);

  @override
  _ImageComparisonPageState createState() => _ImageComparisonPageState();
}

class _ImageComparisonPageState extends State {
  String imageUrl = 'https://picsum.photos/id/525/350/250';
  String cachedImageUrl = 'https://picsum.photos/id/400/350/250';
  int reloadCounter = 0;

  void reloadImages() {
    setState(() {
      reloadCounter++;
      imageUrl = 'https://picsum.photos/id/525/350/250?reload=$reloadCounter';
      cachedImageUrl =
          'https://picsum.photos/id/400/350/250?reload=$reloadCounter';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cached Network Image Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Cached Network Image',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CachedNetworkImage(
              imageUrl: cachedImageUrl,
              placeholder: (context, url) => const CircularProgressIndicator(),
            ),
            const Text(
              'Regular Network Image',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Image.network(imageUrl),
            ElevatedButton(
              onPressed: reloadImages,
              child: const Text('Reload Images'),
            ),
          ],
        ),
      ),
    );
  }
}
