import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';
import 'package:tecmetra_tablet/widgets/main-chart/index.dart';
import 'package:tecmetra_tablet/widgets/search-input/index.dart';

class ReportsPage extends StatefulWidget {
  ReportsPage({Key key}) : super(key: key);

  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
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
                  margin: EdgeInsets.only(
                    left: 10,
                    top: 30,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bar_chart,
                        size: 34,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "Gestão de consumo",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 60,
                  ),
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: MainChart.withSampleData(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
