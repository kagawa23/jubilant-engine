import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color:Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
          icon:Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon:Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      )
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child:Text('Hello World'),
            ),
          )
        ],
      )
    );
  }
}


class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          print('My Button was tapped!');
        },
        child: Container(
          height: 36.0,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color:Colors.lightGreen[500],
          ),
          child: Center(
            child: Text('Engage'),
          ),
        )
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Search',
            onPressed: null,
        ),
        title: Text('Example title'),
        actions:<Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ]
      ),
      body:Center(
       // child:Text('Hello, world'),
        // child: MyButton(),
        child:Counter(),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: 'Add',
          child:Icon(Icons.add),
          onPressed: null),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter =0;

  void _increment(){
    setState(() {
        _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: _increment,
          child: Text('Increment'),
        ),
        Text('Counter:$_counter'),
      ],
    );
  }
}


void main() {
//  runApp(Center(child:Text('Hello zczhaozc  dd world',textDirection: TextDirection.ltr,),),);
//runApp(MaterialApp(title:'My app',
//  home:MyScaffold(),
//));
 runApp(MaterialApp(home:TutorialHome()));
}