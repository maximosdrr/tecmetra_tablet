import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/widgets/drop-down-button/index.dart';

class HomeDropdownButton extends StatefulWidget {
  HomeDropdownButton({Key key}) : super(key: key);

  @override
  _HomeDropdownButtonState createState() => _HomeDropdownButtonState();
}

class _HomeDropdownButtonState extends State<HomeDropdownButton> {
  String _myActivity = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: DropDownFormField(
        hintText: 'Semanal',
        value: _myActivity,
        onSaved: (value) {
          setState(() {
            _myActivity = value;
          });
        },
        onChanged: (value) {
          setState(() {
            _myActivity = value;
          });
        },
        dataSource: [
          {
            "display": "Mensal",
            "value": "0",
          },
          {
            "display": "Anual",
            "value": "1",
          },
          {
            "display": "Semanal",
            "value": "2",
          },
        ],
        textField: 'display',
        valueField: 'value',
      ),
    );
  }
}
