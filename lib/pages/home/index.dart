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
      child: SizedBox.expand(
        child: Container(
          color: HexColor.fromHex('#ECF4FC'),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Container(
                  //   padding: EdgeInsets.all(20),
                  //   child: SearchTextField(),
                  // ),
                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.32,
                            margin: EdgeInsets.only(
                              right: 10,
                              left: 10,
                            ),
                            child: HomeCardItem(
                              backgroundImage: 'card_bg_1',
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.32,
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
                            width: MediaQuery.of(context).size.width * 0.32,
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
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width,
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
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width,
                          child: MainChart.withSampleData(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: HomeDropdownButton(),
                          width: 200,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 30,
                          ),
                          child: AppButton(
                            text: "Ver mais",
                            bold: true,
                            width: 200,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
