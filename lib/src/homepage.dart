import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Color(0xff00317C),
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.white,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          // sets the inactive color of the `BottomNavigationBar`
          child: new BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                    icon: new Icon(Icons.home), title: Text('Home')),
                BottomNavigationBarItem(
                    icon: new Icon(Icons.account_box), title: Text('Profile')),
                BottomNavigationBarItem(
                    icon: new Icon(Icons.settings), title: Text('Setting')),
                BottomNavigationBarItem(
                    icon: new Icon(Icons.exit_to_app), title: Text('Sign Out'))
              ])),
      backgroundColor: Color(0xff00317C),
      body: Container(
        color: Colors.white,
        child: CustomScrollView(slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: Color(0xff00317C),
              padding: new EdgeInsets.only(top: 70.0, bottom: 20),
              child:  Image.asset(
                "images/payrollLogo.png",
                height: 80.0,
              ),
            ),
            new Container(
              color: Color(0xff00317C),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        height: 170,
                      ),
                      Container(
                        color: Color(0xff00317C),
                        height: 80,
                      ),
                      new Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Container(
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage('images/users.jpg'),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0.0, bottom: 10.0),
                                child: new Text(
                                  "Nama Employee",
                                  style: new TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0.0, bottom: 10.0),
                                child: new Text(
                                  "Department",
                                  style: new TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0.0, bottom: 10.0),
                                child: new Text(
                                  " | ",
                                  style: new TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0.0, bottom: 10.0),
                                child: new Text(
                                  "Position",
                                  style: new TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ])),
          SliverGrid(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              delegate: SliverChildListDelegate([
                dashMenu(
                    title: "Attendance",
                    images: 'images/schedule.png',
                    route: '/attendance'),
                dashMenu(
                    title: "Customer Visit",
                    images: 'images/map.png',
                    route: '/customer'),
                dashMenu(
                    title: "Leave Apply",
                    images: 'images/writing.png',
                    route: '/leave'),
                dashMenu(
                    title: "Overtime Apply",
                    images: 'images/writing.png',
                    route: '/overtime'),
                dashMenu(
                    title: "Claim Apply",
                    images: 'images/money.png',
                    route: '/claim'),
                dashMenu(
                    title: "Message",
                    images: 'images/message.png',
                    route: '/message'),
              ])),
        ]),
      ),
    );
  }
}

class dashMenu extends StatelessWidget {
  dashMenu({this.title, this.images, this.route});

  final String title;
  final String images;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        splashColor: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(images, width: 60, height: 60,),
              SizedBox(height: 10,),
              Text(title, style: new TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
