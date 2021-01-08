import 'package:flutter/cupertino.dart';

import 'hex.dart';

LinearGradient defaultGradient() => LinearGradient(
      colors: [
        HexColor.fromHex('#1AC9F4'),
        HexColor.fromHex('#7D51CD'),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
