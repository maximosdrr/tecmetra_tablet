import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  SearchTextField({Key key}) : super(key: key);

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.search,
        ),
        labelText: 'Pesquise por bloco, medidor ou matricula',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
