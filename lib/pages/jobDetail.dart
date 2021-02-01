import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(
                    'https://via.placeholder.com/600/fab5da',
                  ),

                  Positioned(
                    left: 0.0,
                    top: 0.0,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),

                  Positioned(
                    right: 0.0,
                    top: 0.0,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[

                    Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0))
                      ),
                      child: Image.network(
                        'https://via.placeholder.com/600/fab5da',
                        height: 70,
                        width: 70,
                      ),

                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Job type!',
                          style: Theme.of(context).textTheme.title.apply(fontSizeFactor: 2.0,fontWeightDelta: 5),

                        ),
                        Text(
                          'company Name, location',
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ],
                    )

                  ],
                ),
              ),
              SizedBox(height: 15,),

              Container(

                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[

                      Text(
                        'Description!',
                        style: Theme.of(context).textTheme.title.apply(fontSizeFactor: 1.0,fontWeightDelta: 3),
                      ),

                      Text(
                        'king rule world king rule world king rule world king rule world king rule world king rule world king king rule world king rule world king rule world king rule world king rule world king rule world king king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world ',
                       softWrap: true,
                      )

                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }

}
