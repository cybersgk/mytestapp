import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Catalog',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xFFd3a028),
      ),
      home: MyHomePage(title: 'Home Catalog'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

    @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    List<String> familyMembers = ['Sivanand KC','Bindu U','Selva Kumar S','Ganesh Kumar S'];
    return Scaffold(
      backgroundColor: Color(0xFF098469),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          this.title,
          style: TextStyle(color:Color(0xFF098469)),
          ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 0.8,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(familyMembers.length, (index){
          return Container(
        padding:EdgeInsets.only(top: 20),
            child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/unknown_contact.jpg',
                    height: 100.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Text(familyMembers[index],
                    style: TextStyle(color: Color(0xFFe5d84b), fontWeight: FontWeight.bold,fontSize: 16),
                    textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              decoration: myBoxDecoration(),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        backgroundColor: Color(0xFFd3a028),
        tooltip: 'Add Family Member',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 2.0,
      color: Color(0xFFe5d84b)
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(15.0) //                 <--- border radius here
    ),
  );
}
