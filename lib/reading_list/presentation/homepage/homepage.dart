import 'package:flutter/material.dart';
import 'package:pomona/global.dart';
import 'package:pomona/reading_list/presentation/state_management/state_management.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          HomeModel(Provider.of<AppModel>(context, listen: false).db),
      child: Scaffold(
        appBar: pomonaAppBar(context),
        floatingActionButton: FloatingActionButton(
          //TODO replace with custom Icon
          child: Icon(Icons.add),
          onPressed: () {
            //TODO add new reading list
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.count(
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            crossAxisCount: 2,
            children: [
              Material(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () => Navigator.of(context).pushNamed('listpage'),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryVariant,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Center(
                          //TODO replace with illustration
                          child: Icon(
                            Icons.image,
                            size: 60,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        //TODO replace with dynamic list name
                        Text(
                          "Main list",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            //TODO replace with dynamic book count
                            Text(
                              "4 books",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            //TODO replace with dynamic finished books count
                            Text(
                              "2 done",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
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
      ),
    );
  }
}
