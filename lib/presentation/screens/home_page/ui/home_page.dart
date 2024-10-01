import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            pinned: true,
            centerTitle: false,
            expandedHeight: 300,
            stretch: true,
            flexibleSpace: const FlexibleSpaceBar(
              stretchModes: [
                StretchMode.blurBackground,
              ],
              background: Image(
                image: AssetImage("assets/images/flutter_background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            pinned: true,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(-10),
              child: SizedBox(),
            ),
            flexibleSpace: const SearchBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 20, bottom: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  ),
                );
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
