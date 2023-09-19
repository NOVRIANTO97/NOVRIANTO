import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Tugas1
      (),
    );
  }
}
class Tugas1 extends StatelessWidget {
  const Tugas1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Text(
        "INI TEXT",
        style: TextStyle(
            color: Colors.blue,
            backgroundColor: Colors.pink,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[Icon(Icons.access_alarm), Text('Alarm')],
            ),
            Column(
              children: <Widget>[Icon(Icons.phone), Text('Phone')],
            ),
            Column(
              children: <Widget>[Icon(Icons.book), Text('Book')],
            ),
          ],
        ),
      ),
    );
  }
}

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tugas 3"),
        ),
        body: Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.purple),
            // color: Colors.purple,
            child: Text(
              'NOVRIANTO',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )));
  }
}

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tugas 4"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "A",
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "B",
              style: TextStyle(fontSize: 30.0),
            )
          ],
        ));
  }
}

class Tugas5 extends StatelessWidget {
  const Tugas5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("tugas 5"),
        ),
        body: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              child: Text("Raised Button"),
              onPressed: () {},
            ),
            MaterialButton(
              color: Colors.lime,
              child: Text("Material Button"),
              onPressed: () {},
            ),
            OutlinedButton(
              child: Text("FlatButton Button"),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {},
            ),
          ],
        ));
  }
}

class Tugas6 extends StatelessWidget {
  const Tugas6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tugas 5"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ));
  }
}
class Tugas7 extends StatelessWidget {
  const Tugas7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tugas7')),
      body: Container(
        color: Colors.red,
        child: MaterialButton(
          child: Text("Alert Dialog"),
          textColor: Colors.white,
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return GiffyDialog.image( 
                      Image.network(
                        'assets/google-jacket.gif',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        'Men Wearing Jakets',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w100),
                      ),
                      content: Text(
                        'This is a men wearning jakets',
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'CANCEL'),
                          child: const Text(
                            'CANCEL',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text(
                            'OK',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]);
                });
          },
        ),
      ),
    );
  }
}