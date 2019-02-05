import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:praiforme/src/AppBloc.dart';
import 'package:praiforme/src/home/HomeBloc.dart';
import 'package:praiforme/src/home/componets/conta/ContaWidget.dart';
import 'package:praiforme/src/home/componets/drawer/DrawerWidget.dart';
import 'package:praiforme/src/home/componets/inicio/InicioWidget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = BlocProviderList.of<HomeBloc>(context);

    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("PrayForMe"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {},
          )
        ],
      ),
      body: StreamBuilder(
        stream: homeBloc.outScreen,
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if (!snapshot.hasData) return Container();

          return snapshot.data;
        },
      ),
    );
  }
}
