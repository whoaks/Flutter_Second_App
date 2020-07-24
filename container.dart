import 'package:flutter/material.dart';
mycontainer()
{

  var MyText = Text (
    'Akash Pandey' ,
    style: TextStyle(
      fontStyle: FontStyle.italic,
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.white ,
      //decoration: TextDecoration.none,
      decorationStyle: TextDecorationStyle.dashed,
      decorationColor: Colors.orange,
      decorationThickness: 3,
    ),
  );

  var MyText2 = Text(
    'My Second Mobile App' ,
    style: TextStyle(
      fontStyle: FontStyle.italic ,
      fontSize: 24,
      backgroundColor: Colors.black,
    ),
  );

  var Icon1 = Icon(
    Icons.android ,
    color: Colors.amber, 
  );

  var Icon2 = Icon(
    Icons.apps ,
  );

  press1() {
    print('Welcome , Click once again....');
  }

  var Action_Icon = IconButton(
    icon: Icon2,
    onPressed: press1,
    color: Colors.black,
    hoverColor: Colors.amber,
  );

  var MyAppBar = AppBar(
      title: MyText2,
      leading: Icon1,
      actions: <Widget>[
        Action_Icon , 
      ],
      backgroundColor: Colors.deepOrangeAccent ,
    );

    var MyBorder = Border.all(
        color: Colors.blue,
        width: 5 ,
      );

      var url = 'https://raw.githubusercontent.com/whoaks/july22_first_app/master/MyImage.JPG';

      var MyImage = DecorationImage(
        image: NetworkImage(
          url ,
        ) , 
        fit: BoxFit.cover ,
      );

    var MyDecoration = BoxDecoration(
      color: Colors.yellowAccent,
      border: MyBorder ,
      image: MyImage ,
      borderRadius: BorderRadius.circular(30),
    );

    var MyBody = Container(
      //color: Colors.lightGreenAccent,
      height: 350,
      width: 350,
      alignment: Alignment.bottomCenter,
      child: MyText ,
      decoration: MyDecoration,
    );

  var MyHome = Scaffold(
    appBar: MyAppBar ,
    body: Center(child: MyBody) ,
    backgroundColor: Colors.purple,
  );

 var My_Material_App = MaterialApp(
      home: MyHome ,
      debugShowCheckedModeBanner: false,
      );

  return My_Material_App ;
}