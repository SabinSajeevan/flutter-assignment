import 'package:assignment/models/category_model.dart';
import 'package:assignment/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screen2.dart';

class Screen1Page extends StatefulWidget {
  @override
  _Screen1PagePageState createState() => _Screen1PagePageState();
}

class _Screen1PagePageState extends State<Screen1Page> {
  int selected = 1;

  List<CategoryModel> categoryList = [
    CategoryModel(
        image: "images/sunlight.png",
        title: "All"),
    CategoryModel(
        image: "images/food.png",
        title: "Food"),
    CategoryModel(
        image: "images/strong.png",
        title: "Sport"),
    CategoryModel(
        image: "images/music.png",
        title: "Music"),
    CategoryModel(
        image: "images/sunlight.png",
        title: "All"),
    CategoryModel(
        image: "images/food.png",
        title: "Food"),
    CategoryModel(
        image: "images/strong.png",
        title: "Sport"),
    CategoryModel(
        image: "images/music.png",
        title: "Music"),
  ];

  List<EventModel> eventList = [
    EventModel(
        image: "images/louvre.jpeg",
        date: "FRI, DEC 19TH - MON DEC 27TH",
        title: "Nocturnal and unusual visit",
        subTitle: "Louvre"),
    EventModel(
        image: "images/placeholder.jpg",
        date: "FRI, DEC 19TH - MON DEC 27TH",
        title: "Nocturnal and unusual visit",
        subTitle: "Louvre"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text(
              "Paris",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white),
            ),
            icon:
                Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.white),
            items: <String>['Paris'].map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: FloatingActionButton(
              heroTag: 'search button',
              mini: true,
              elevation: 0,
              child: Icon(Icons.search),
              onPressed: () => {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: FloatingActionButton(
              heroTag: 'filter button',
              mini: true,
              elevation: 0,
              child: Icon(Icons.tune),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 140.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 6.0, right: 6.0, top: 6.0, bottom: 25.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: selected == index
                                  ? Color(0xff5D59D8)
                                  : Color(0xff2D3236)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Container(
                                    color: selected == index
                                        ? Color(0xff4A46BC)
                                        : Theme.of(context).accentColor,
                                    padding: EdgeInsets.all(14.0),
                                    child: Image.asset(categoryList[index].image),
                                  )),
                              Text(
                                categoryList[index].title,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Popular Events",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0),
              textAlign: TextAlign.left,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              margin: EdgeInsets.only(bottom: 10.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: eventList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.only(top: 8.0, bottom: 8.0, right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              SizedBox(
                                height: 40.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 25.0),
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Screen2Page(event: eventList[index],)),
                                      );
                                    },
                                    child: Image.asset(
                                    eventList[index].image,
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                ),
                              ),
                              Positioned(
                                bottom: 0.0,
                                right: 10.0,
                                child:
                                InkWell(
                                  onTap: (){},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                        padding: EdgeInsets.all(12.0),
                                        color:  Colors.grey ,
                                        child: new Icon(Icons.favorite,color: Colors.grey[400],)
                                    )
                                ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            eventList[index].date,
                            style: TextStyle(color: Color(0xff5D59D8)),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            eventList[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                          Text(
                            eventList[index].subTitle,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
