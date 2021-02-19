import 'package:flutter/material.dart';

import 'global.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pomonaAppBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO add book
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.of(context).pop()),
            ),
            //TODO replace with dynamic name
            Align(
              alignment: Alignment.topLeft,
              child: Text("Main reading list"),
            ),
            SizedBox(
              height: 12,
            ),
            //TODO build with a list
            Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () => Navigator.of(context).pushNamed('bookpage'),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onBackground,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TODO replace with Real book title data
                      Text("The law of human nature"),
                      Row(
                        children: [
                          //TODO replace with Real author data
                          Text("by Robert Greene"),
                          SizedBox(
                            width: 25,
                          ),
                          //TODO replace with Real progress data
                          Text('35% reading'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
