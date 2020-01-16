import 'package:assignment/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2Page extends StatefulWidget {
  Screen2Page({Key key, this.event}) : super(key: key);

  final EventModel event;

  @override
  _Screen2PagePageState createState() => _Screen2PagePageState();
}

class _Screen2PagePageState extends State<Screen2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            child: Image.asset(
              widget.event.image,
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 50.0,
            left: 20.0,
            child: FloatingActionButton(
              heroTag: 'back button',
              mini: true,
              elevation: 0,
              backgroundColor: Colors.black12,
              child: Icon(Icons.arrow_back_ios),
              onPressed: () => {
                Navigator.pop(context)
              },
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.8,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0)),
                      color: Theme.of(context).primaryColor),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          width: 50.0,
                          height: 3.0,
                          color: Colors.grey,
                        ),
                        ListTile(
                          title: Text(
                            "Izabel Peattie",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Organizer",
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/user.jpeg",
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          trailing: RaisedButton(
                            color: Color(0xff2D3236),
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0)),
                                color: Color(0xff2D3236)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    width: 50.0,
                                    height: 3.0,
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 5.0,
                                          bottom: 35.0,
                                          left: 15.0,
                                          right: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 20.0,
                                              ),
                                              Text(
                                                widget.event.date,
                                                style: TextStyle(
                                                    color: Color(0xff5D59D8)),
                                              ),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(
                                                widget.event.title,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 19.0),
                                              ),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(
                                                widget.event.subTitle,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 30.0,
                                              ),
                                            ],
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    color: Colors.grey,
                                                    child: new Icon(
                                                      Icons.favorite,
                                                      color: Colors.red,
                                                    ))),
                                          ),
                                        ],
                                      )),
                                ]))
                      ]))),
          Positioned(
            bottom: 20.0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff5D59D8),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Get Ticket",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
