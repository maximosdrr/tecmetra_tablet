import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/default_gradient.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';

class WaterPageTable extends StatelessWidget {
  const WaterPageTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: FixedColumnWidth(150.0),
      children: [
        _generateTableHeader(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
        _generateTableRow(),
      ],
    );
  }

  _generateTableRow() {
    return TableRow(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      children: [
        _generateStringCell('166b'),
        _generateStringCell('302'),
        _generateIconCell(Icons.opacity),
        _generateStringCell('a15B006267'),
        _generateStringCell('655,221 m³'),
      ],
    );
  }

  _generateTableHeader() {
    return TableRow(
      decoration: BoxDecoration(
        gradient: defaultGradient(),
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      children: [
        _generateHeaderStringCell('Bloco'),
        _generateHeaderStringCell('Imovel'),
        _generateHeaderStringCell('Grandeza'),
        _generateHeaderStringCell('Medidor'),
        _generateHeaderStringCell('Leitura')
      ],
    );
  }

  _generateHeaderStringCell(String text) {
    return Container(
      padding: EdgeInsets.all(
        15,
      ),
      height: 60,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          color: HexColor.fromHex(
            '#FFFFFF',
          ),
        ),
      ),
    );
  }

  _generateStringCell(String text) {
    return Container(
      padding: EdgeInsets.all(
        15,
      ),
      height: 60,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          color: HexColor.fromHex(
            '#646483',
          ),
        ),
      ),
    );
  }

  _generateIconCell(IconData icon) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(
        15,
      ),
      height: 60,
      child: Icon(
        icon,
        size: 32,
        color: HexColor.fromHex(
          '#646483',
        ),
      ),
    );
  }
}
