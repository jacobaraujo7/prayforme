import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:praiforme/src/AppBloc.dart';
import 'package:praiforme/src/home/HomeBloc.dart';
import 'package:praiforme/src/home/HomeWidget.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProviderList(
      listBloc: [
        Bloc(AppBloc()),
        Bloc(HomeBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeWidget(),
      ),
    );
  }
}
