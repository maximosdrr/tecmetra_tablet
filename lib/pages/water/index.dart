import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';
import 'package:tecmetra_tablet/pages/water/widgets/table/index.dart';
import 'package:tecmetra_tablet/widgets/search-input/index.dart';

class WaterPage extends StatefulWidget {
  WaterPage({Key key}) : super(key: key);

  @override
  _WaterPageState createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 900,
        color: HexColor.fromHex('#ECF4FC'),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: SearchTextField(),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                        icon: Icon(
                          Icons.opacity,
                          color: HexColor.fromHex('#646483'),
                          size: 32,
                        ),
                        label: Text(
                          "MEDIÇÃO DO CONSUMO DE ÁGUA",
                          style: TextStyle(
                            color: HexColor.fromHex('#646483'),
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 30,
                        ),
                        child: Text(
                          "ULTIMA MEDIÇÃO: 09/01/2020 ÁS 01:06",
                          style: TextStyle(
                            color: HexColor.fromHex('#646483'),
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: WaterPageTable(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
