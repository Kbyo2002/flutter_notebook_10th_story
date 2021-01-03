import 'package:flutter/material.dart';

class YogaHomePage extends StatefulWidget {
  @override
  _YogaHomePageState createState() => _YogaHomePageState();
}

class _YogaHomePageState extends State<YogaHomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  title: Text("Welcome Dream Walker",
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 24,
                      ),
                    ),
                  ],
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(120),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                          ),
                        ),
                        TabBar(
                            labelColor: Colors.orange,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.orange,
                            controller: _tabController, tabs: [
                          Tab(
                            text: "Subscribed",
                          ),
                          Tab(
                            text: "Trending",
                          )
                        ])
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.home_outlined),
                          color: Colors.orange,
                          iconSize: 32,
                          onPressed: () {},
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.add_chart),
                      color: Colors.black,
                      iconSize: 32,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.person_outline),
                      color: Colors.black,
                      iconSize: 32,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
