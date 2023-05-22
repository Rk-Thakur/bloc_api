import 'package:blocapi/bloc/covid_bloc.dart';
import 'package:blocapi/screen/covid-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const CovidPage(),
    );
  }
}
