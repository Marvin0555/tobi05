import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.green,
            buttonTheme: ButtonThemeData(
                buttonColor: Colors.green, textTheme: ButtonTextTheme.primary)),
        home: Dashboard());
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UEA')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('image/Vestibular_UEA_2019_1.png'),
          ),
          ButtonText('Login',Icons.people),
          ButtonText('Cadrastro',Icons.content_paste)
        ],
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String stringName;
  final IconData icone;
  ButtonText(this.stringName,this.icone);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 100,
        width: 150,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(icone,
              color: Colors.white,
              size: 32.0,
            ),
            Text(stringName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                )),
          ],
        ),
      ),
    );
  }
}