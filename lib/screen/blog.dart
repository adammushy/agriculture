import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/data.dart';
import '../widgets/latestnews.dart';
import '../widgets/styles.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          // SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   height: 50,
          //   decoration: BoxDecoration(
          //     color: whiteColor,
          //     border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
          //   ),
          //   child: Center(
          //     child: Text(
          //       "Articles",
          //       style: blackTextStyle.copyWith(fontSize: 20),
          //     ),
          //   ),
          // ),
          ListView(
            children: [
              Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.lightGreen.shade100,
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Center(
              child: Text(
                "Machapisho(Articles by Special)",
                style: blackTextStyle.copyWith(fontSize: 24,fontWeight: FontWeight.w500),
              ),
            ),
          ),
              Container(
                // color: Colors.grey,
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                child: Column(
                  children: latestNewsList.map((news) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: LatestNewsItem(latestNews: news),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
