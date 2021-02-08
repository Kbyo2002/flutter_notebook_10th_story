import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  int _pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(top: 72, left: 16, right: 16),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Row(
                        children: [
                          Text("Dashboard" , style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search),
                          ),
                          Badge(
                            child: Icon(Icons.notifications_none),
                          )
                        ],
                      ),
                    Text("Portfolio balance"),
                    Row(
                      children: [
                        Text("\$8,401.10", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            height: 24,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Center(
                              child: Text("+72.40%",style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          ),
                        ),
                        Text("+ \$3,204.90", style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 5,
              child: Placeholder()),
          Expanded(
              flex: 7,
              child: Placeholder()),

        ],
      ),
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIdx,
        onTap: (idx){
          setState(() {
            _pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Portfolio"),
        BottomNavigationBarItem(icon: Icon(Icons.code), label: "Transactions"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
      ],

      ),
    );
  }
}
