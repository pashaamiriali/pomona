import 'package:flutter/material.dart';
import 'package:pomona/global.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pomonaAppBar(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          //TODO edit book
        },
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.of(context).pop()),
                ),
                //TODO replace with dynamic book name
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("The law of human nature"),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("by Robert Greene"),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        color: Theme.of(context).colorScheme.secondaryVariant,
                      ),
                      Container(
                        //TODO replace with the dynamic progress factor
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 50,
                        padding: EdgeInsets.all(12),
                        color: Theme.of(context).colorScheme.secondary,
                        //TODO replace with the dynamic progress percentage
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('35%'),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Material(
                              child: InkWell(
                                borderRadius: BorderRadius.circular(16),
                                onTap: () {
                                  //TODO to chapters page
                                },
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondaryVariant,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    children: [
                                      Center(
                                        //TODO replace with illustration
                                        child: Icon(
                                          Icons.bookmark,
                                          size: 60,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "Chapters",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          //TODO replace with dynamic chapter count
                                          Text(
                                            "18",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Material(
                              child: InkWell(
                                borderRadius: BorderRadius.circular(16),
                                onTap: () {
                                  //TODO to Notes page
                                },
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondaryVariant,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    children: [
                                      Center(
                                        //TODO replace with illustration
                                        child: Icon(
                                          Icons.note,
                                          size: 60,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "Notes",
                                        style:
                                            Theme.of(context).textTheme.bodyText1,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          //TODO replace with dynamic Note count
                                          Text(
                                            "5",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.onBackground,
                              style: BorderStyle.solid,
                              width: 1,
                            ),
                          ),
                          //TODO replace with rich text editor
                          child: Text('Type your summary here...'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
