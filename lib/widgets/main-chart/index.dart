/// Example of setting an initial viewport for ordinal axis.
///
/// This allows for specifying the specific range of data to show that differs
/// from what was provided in the series list.
///
/// In this example, the series list has ordinal data from year 2014 to 2030,
/// but we want to show starting at 2018 and we only want to show 4 values.
/// We can do this by specifying an [OrdinalViewport] in [OrdinalAxisSpec].

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';

class MainChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  MainChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory MainChart.withSampleData() {
    return new MainChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: new charts.BarChart(
        seriesList,
        animate: animate,
        animationDuration: Duration(seconds: 2),

        // Set the initial viewport by providing a new AxisSpec with the
        // desired viewport: a starting domain and the data size.
        domainAxis: new charts.OrdinalAxisSpec(
          viewport: new charts.OrdinalViewport('2011', 18),
        ),
        // Optionally add a pan or pan and zoom behavior.
        // If pan/zoom is not added, the viewport specified remains the viewport.
        behaviors: [new charts.PanAndZoomBehavior()],
      ),
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            HexColor.fromHex('#1AC9F4'),
            HexColor.fromHex('#7D51CD'),
            HexColor.fromHex('#7D51CD'),
          ],
          stops: [
            0.0,
            0.5,
            1.0,
          ],
        ).createShader(bounds);
      },
      blendMode: BlendMode.srcATop,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2009', 21),
      new OrdinalSales('2010', 77),
      new OrdinalSales('2011', 8),
      new OrdinalSales('2012', 12),
      new OrdinalSales('2013', 42),
      new OrdinalSales('2014', 70),
      new OrdinalSales('2015', 77),
      new OrdinalSales('2016', 55),
      new OrdinalSales('2017', 19),
      new OrdinalSales('2018', 66),
      new OrdinalSales('2019', 27),
      new OrdinalSales('2020', 23),
      new OrdinalSales('2021', 55),
      new OrdinalSales('2022', 78),
      new OrdinalSales('2023', 42),
      new OrdinalSales('2024', 53),
      new OrdinalSales('2025', 21),
      new OrdinalSales('2026', 32),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
