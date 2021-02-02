import 'package:flutter/cupertino.dart';
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
          margin: EdgeInsets.fromLTRB(8,15,8,8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey,blurRadius: 5, offset: Offset(0,3))
              ]
          ),


          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[

                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 0,
                      child: Image.asset(
                        'Asset/tree.jpg',
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),

                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      child: IconButton(
                        icon: Icon(Icons.chevron_left,color: Colors.white,),
                        onPressed: (){},

                      ),
                    ),

                    Positioned(
                      top: 0.0,
                      right: 0,
                      child: IconButton(
                        icon: Icon(Icons.tune,color: Colors.white,),
                        onPressed: (){},

                      ),
                    ),
                  ]
                ),
              ),



              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(20),

                  child: Row(
                    children: <Widget>[

                      ClipRRect(
                        borderRadius:BorderRadius.circular(10),
                        child: Image.network(
                          'https://via.placeholder.com/600/fab5da',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Job type!',
                            style: Theme.of(context).textTheme.title.apply(fontSizeFactor: 2.0,fontWeightDelta: 5,),

                          ),
                          Text(
                            'company Name, location',
                            style: Theme.of(context).textTheme.subtitle.apply(color: Colors.grey),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[

                            Text(
                              'Description!',
                              style: Theme.of(context).textTheme.title.apply(fontSizeFactor: 1.0,fontWeightDelta: 3),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'king rule world king rule world king rule world king rule world king rule world king rule world king king rule world king rule world king rule world king rule world king rule world king rule world king king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world king rule world ',
                              softWrap: true,
                              style: Theme.of(context).textTheme.body1.apply(color: Colors.grey,),
                            )

                          ],
                        ),
                      ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: RaisedButton(
                                splashColor: Colors.green,
                                color: Colors.lightBlue,
                                onPressed: (){},
                                child: Text('Summit',style: Theme.of(context).textTheme.button.apply(color: Colors.white,),
                              ),
                            ),
                            )]
                        ),
                      
                    ],
                  ),

                ),

              ),

            ],
          ),
        ),
      ),
    );
  }

}
