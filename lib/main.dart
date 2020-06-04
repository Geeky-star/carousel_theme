import 'package:flutter/material.dart';
import 'package:carousel_widget/carousel_widget.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carousel Theme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
  Widget build(BuildContext context){
    
    initializeData();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Carousel(
        listViews:[
          Fragment(
            child: getScreen(0),
          ),
          Fragment(
            child: getScreen(1),
          ),
          Fragment(
            child: getScreen(2),
          ),
          Fragment(
            child: getScreen(3),
          ),
          
          Fragment(
            child: getScreen(4),
          ),
        ],
      ),
    );
  }

  Widget getScreen(index){
    return ListView(
      children: <Widget>[
        Container(
          height: 300,
          width:900,
          margin: const EdgeInsets.fromLTRB(1.0, 90.0, 1.0, 0.0),
          child: Image.asset(imageNames.elementAt(index),
          ),
        ),
        Container(
          height: 45.0,
          margin: const EdgeInsets.fromLTRB(50.0, 12.0, 50.0, 0.0),
          child: Text(description.elementAt(index), textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,maxLines: 5,style: TextStyle(fontSize: 25),),
        ),
        
      ],
    );
  }   

  List<String> titles=List();
  List<String> description=List();
  List<String> imageNames=List();

  void initializeData(){
    titles.add("car");
    description.add("My favorite car");
    imageNames.add("assets/b1.jpg");

    titles.add("car");
    description.add("My favorite car");
    imageNames.add("assets/b2.jpg");

    titles.add("car");
    description.add("My favorite car");
    imageNames.add("assets/b3.jpg");

    titles.add("car");
    description.add("My favorite car");
    imageNames.add("assets/b4.jpg");

  }    
}
