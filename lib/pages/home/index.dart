import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';
import 'package:tecmetra_tablet/pages/home/widgets/cards/index.dart';
import 'package:tecmetra_tablet/pages/home/widgets/dropdown/index.dart';
import 'package:tecmetra_tablet/widgets/app-button/index.dart';
import 'package:tecmetra_tablet/widgets/main-chart/index.dart';
import 'package:tecmetra_tablet/widgets/search-input/index.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                        child: HomeCardItem(
                          backgroundImage: 'card_bg_1',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        child: HomeCardItem(
                          backgroundImage: 'card_bg_2',
                          title: 'Consumo total',
                          value: '118,510',
                          icon: Icons.whatshot,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        child: HomeCardItem(
                          backgroundImage: 'card_bg_3',
                          title: 'Consumo do dia',
                          value: '3,200',
                          icon: Icons.opacity,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 40,
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
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 40,
                          right: 40,
                          top: 10,
                        ),
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: MainChart.withSampleData(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: HomeDropdownButton(),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 50,
                        ),
                        child: AppButton(
                          text: "Ver mais",
                          bold: true,
                          width: 200,
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
