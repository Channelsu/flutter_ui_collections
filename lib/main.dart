import 'package:flutteruicollections/animations/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutteruicollections/screens/ui_sample_list_screen.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.lightBlue[400],
              Colors.lightBlue[700],
              Colors.lightBlue[900],
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text('Flutter', style: TextStyle(color: Colors.white, fontSize: 40),)),
                  FadeAnimation(1.3, Text('UI', style: TextStyle(color: Colors.white, fontSize: 40),)),
                  FadeAnimation(1.6, Text('Collections', style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  // RaisedButton(
                  //   child: Text('Login'),
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(
                  //       builder: (context) => WidgetListPage(),
                  //     ));
                  //   },
                  // ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60),
                      FadeAnimation(1.8, Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Colors.blue,
                          blurRadius: 20,
                          offset: Offset(0, 10)
                          )]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200])),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '???????????? ????????? ?????????????????????',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200])),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '???????????????',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(height: 40,),
                      FadeAnimation(1.8, Text('?????????????????????????????????????????????', style: TextStyle(color: Colors.grey),)),
                      SizedBox(height: 30,),
                      FadeAnimation(2.0, Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => UiSampleListScreen(),
                                ));
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0)
                              ),
                              child: Text('????????????', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                              color: Colors.blue,
                            ),
                          ),
                        )
                      )),
                      SizedBox(height: 50,),
                      FadeAnimation(2.2, Text('??????SNS???????????????', style: TextStyle(color: Colors.grey),)),
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FadeAnimation(2.4, Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue[200],
                              ),
                              child: Center(
                                child: Text('Facebook', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                              ),
                            )),
                          ),
                          SizedBox(width: 30,),
                          Expanded(
                            child: FadeAnimation(2.4, Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text('GitHub', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                              ),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
