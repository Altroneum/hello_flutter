import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  icreement() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        leading: Icon(Icons.menu),
        title: Text("My first App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            //icreement();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login(data: "Hello ",)));
          },
          child: Icon(Icons.add)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image.jpg",
                height: screenSize.height * .3,
              ),
              Image.network(
                  "https://is2-ssl.mzstatic.com/image/thumb/Purple22/v4/30/69/d4/3069d477-0e33-1d9f-4f05-4b43835d96da/source/256x256bb.jpg"),
              Text(
                "$count",
                style: const TextStyle(fontSize: 30, color: Colors.blue),
              ),
              const Text("You have pressed this many"),
              FlutterLogo(
                size: 100,
                duration: Duration(seconds: 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
