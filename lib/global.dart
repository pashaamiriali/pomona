import 'package:flutter/material.dart';

  AppBar pomonaAppBar(BuildContext context) {
    return AppBar(
      //TODO replace with custom icon
      leading: Icon(
        Icons.menu,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      title: Text(
        'Pomona',
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
