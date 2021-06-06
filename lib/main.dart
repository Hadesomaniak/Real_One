import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PageOne(),
    ),
  );
}

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            color: Color.fromARGB(7, 5, 5, 1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton(
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageInfo(),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 240),
                    TextButton(
                      child: Row(
                        children: [
                          Text("Polski"),
                          Icon(
                            CupertinoIcons.lab_flask,
                            color: Colors.indigo,
                          ),
                        ],
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Text(
                    "Co zrobić ",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: "RobotoMono",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    "po przyjeździe",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: "RobotoMono",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  color: Color.fromARGB(10, 10, 12, 1),
                  height: 600,
                  child: ListView(
                    children: [
                      greybutton(Icons.badge, "Załatwić Kartę pobytu"),
                      greybutton(Icons.hotel, "Szukać Hoteli"),
                      greybutton(Icons.house, "Szukać Mieszkania"),
                      greybutton(Icons.translate, "Tłumacz POL-RUS"),
                      greybutton(Icons.room, "Podstawowe adresy w Poznaniu"),
                      greybutton(Icons.fiber_pin, "Załatwić pesel"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(7, 5, 5, 1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TextButton(
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageInfo(),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 240),
                    TextButton(
                      child: Row(
                        children: [
                          Text("Polski"),
                          Icon(
                            CupertinoIcons.lab_flask,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Text(
                    "Pobyt w Polsce",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: "RobotoMono",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 600,
                  color: Color.fromARGB(10, 10, 12, 1),
                  child: ListView(
                    children: [
                      greybutton(Icons.directions_bus,
                          "Rozkład jazdy autobusu i pociągu"),
                      greybutton(
                          Icons.account_balance, "Założyć konto bankowe"),
                      greybutton(Icons.work, "Szukać Pracy"),
                      greybutton(Icons.security, "Policja i Dzielnicowy"),
                      greybutton(Icons.mail, "Adresy Poczty"),
                      greybutton(Icons.engineering, "Służby Komunalne"),
                      greybutton(
                          Icons.restaurant_menu, "Jedzenie,Rozrywka,Kultura"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        labelColor: Color.fromARGB(140, 1, 1, 1),
        unselectedLabelColor: Color.fromARGB(140, 1, 1, 1),
        indicatorColor: Color.fromARGB(140, 1, 1, 1),
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 6.0),
          insets: EdgeInsets.fromLTRB(0, 0.0, 0, 40.0),
        ),
        tabs: <Widget>[
          Tab(
            text: "PO PRZYJEŹDZIE",
          ),
          Tab(
            text: "POBYT W POLSCE",
          ),
        ],
      ),
    );
  }
}

class greybutton extends StatelessWidget {
  final IconData icon;
  final String text;

  const greybutton(
    this.icon,
    this.text, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: EdgeInsets.all(8),
        child: FlatButton(
          child: Row(
            children: [
              Icon(
                icon,
                color: Color.fromARGB(140, 1, 1, 1),
              ),
              Expanded(
                child: Text(
                  (text),
                  style: TextStyle(
                    color: Color.fromARGB(140, 1, 1, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 8, offset: Offset(4, 8))
            ]),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PageIn(),
          ),
        );
      },
    );
  }
}

class PageInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            child: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageOne(),
                ),
              );
            },
          ),
          Text("Brakuje tu kontentu "),
        ],
      ),
    );
  }
}

class PageIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            child: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageOne(),
                ),
              );
            },
          ),
          Text("Brakuje tu kontentu "),
        ],
      ),
    );
  }
}
