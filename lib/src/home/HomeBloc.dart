import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:praiforme/src/home/componets/inicio/InicioWidget.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc implements BlocBase {

  final BehaviorSubject<Widget> _drawerController = BehaviorSubject<Widget>(seedValue: InicioWidget()); 
  Sink<Widget> get inScreen => _drawerController.sink;
  Observable<Widget> get outScreen => _drawerController.stream;


  dispose(){
    _drawerController.close();
  }


}