import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //retornando nosso widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.yellow,
        home: Scaffold(
          body: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Text'),
              SizedBox(height: 8,),
              Icon(Icons.access_alarm),
              Text('Text 2'),
              SizedBox(
                width: 100,
                  height: 100,
                  child: Container(
                    color: Colors.brown,
                  )
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    //Para mudar o padding em alguma direção específica pode usar o .only ou o simmetric
                    padding: const EdgeInsets.all(32.0),
                    child: ElevatedButton(
                      onPressed: (){
                        print('clique');
                      },
                      child: Text('Clique'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      print('clique');
                    },
                    child: Text('Clique'),
                  )
                ],
              ),
            ],
          )),
        ));
  }
}
