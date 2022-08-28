import 'package:flutter/material.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalcUI(),
    );
  }
}

class CalcUI extends StatefulWidget {
  const CalcUI({Key? key}) : super(key: key);

  @override
  State<CalcUI> createState() => _CalcUIState();
}

class _CalcUIState extends State<CalcUI> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20),
              child: GridButton(
                borderColor: Colors.grey[300],
                borderWidth: 2,
                textStyle: TextStyle(fontSize: 20,),
                onPressed: (dynamic val) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(val.toString()),
                      duration: Duration(milliseconds: 400),
                    ),
                  );
                },
                items: [
                  const [
                    GridButtonItem(
                        title: 'Black',
                        color: Colors.black,
                        textStyle: TextStyle(color: Colors.white)),
                    GridButtonItem(
                        title: 'Red',
                        color: Colors.red,
                        textStyle: TextStyle(color: Colors.white))
                  ],
                  const [
                    GridButtonItem(
                      
                        child: Icon(Icons.image_outlined, size: 50,),
                        color: Colors.blue,
                        shape: BorderSide(width: 4),
                        borderRadius: 30,
                        textStyle: TextStyle(color: Colors.white))
                  ],
                  [
                    GridButtonItem(title: '7'),
                    GridButtonItem(title: '8'),
                    GridButtonItem(title: '9'),
                    GridButtonItem(title: 'x', color: Colors.grey[300]),
                  ],
                  [
                    GridButtonItem(title: '4',),
                    GridButtonItem(title: '5'),
                    GridButtonItem(title: '6'),
                    GridButtonItem(title: '-', color: Colors.grey[300]),
                  ],
                  [
                    GridButtonItem(title: '1'),
                    GridButtonItem(title: '2'),
                    GridButtonItem(title: '3'),
                    GridButtonItem(title: '+', color: Colors.grey[300]),
                  ],
                  [
                    GridButtonItem(title: '0'),
                    GridButtonItem(title: '000'),
                    GridButtonItem(title: '/'),
                    GridButtonItem(title: '=', color: Colors.grey[300]),
                  ],
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
