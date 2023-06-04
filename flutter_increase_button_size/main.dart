import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Centered Text Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  padding: const EdgeInsets.all(10),
                ),
                child: const Text('ElevatedButton.styleFrom'),
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
                  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
                ),
                child: const Text('ButtonStyle'),
              ),
              SizedBox(height: 15,),
              Transform.scale(
                scale: 1.5,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Transform.scale'),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('SizedBox'),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
