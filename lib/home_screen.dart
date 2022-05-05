import 'package:flutter/material.dart';
import 'package:movies_app/popular_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(child: Container()),
                  TabBar(
                    labelStyle: const TextStyle(
                      fontFamily:"Comfortaa", fontSize: 24, fontWeight: FontWeight.bold
                    ),
                    tabs: const [
                      Text("Popular"),
                      Text("NowPlaying"),
                      Text("Up Coming"),
                      Text("Top Rate"),
                    ],
                    indicatorColor: Colors.black,
                    indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 2),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black.withOpacity(0.5),
                    isScrollable: true,
                  ),
                ],
              ),
            ),
          )
        ),
        body: TabBarView(
          children: [
            PopularView(),
            Container(color: Colors.blue,),
            Container(color: Colors.red,),
            Container(color: Colors.orange,),

          ],
        ),
      ),
    );
  }
}
