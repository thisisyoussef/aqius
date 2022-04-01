/*
*  shadows.dart
*  Stryke-Discovery-Wireframes
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/rendering.dart';


class Shadows {
  static const BoxShadow primaryShadow = BoxShadow(
    color: Color.fromARGB(46, 0, 0, 0),
    offset: Offset(0, 0),
    blurRadius: 2,
  );
  static const BoxShadow secondaryShadow = BoxShadow(
    color: Color.fromARGB(39, 104, 108, 128),
    offset: Offset(2, 2),
    blurRadius: 4,
  );
}