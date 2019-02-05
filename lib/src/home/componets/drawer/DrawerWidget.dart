import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:praiforme/src/home/HomeBloc.dart';
import 'package:praiforme/src/home/componets/conta/ContaWidget.dart';
import 'package:praiforme/src/home/componets/inicio/InicioWidget.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = BlocProviderList.of<HomeBloc>(context);

    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Inicio"),
            onTap: () {
              Scaffold.of(context).openEndDrawer();
              homeBloc.inScreen.add(InicioWidget());
            },
          ),
          ListTile(
            title: Text("Conta"),
            onTap: () {
              Scaffold.of(context).openEndDrawer();
              homeBloc.inScreen.add(ContaWidget());
            },
          ),
        ],
      ),
    );
  }
}
