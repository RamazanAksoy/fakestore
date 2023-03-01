import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SizedBoxes {
    static lowHeightBox({double? height}) => SizedBox(height: height ?? 1.h);
    static middleHeightBox({double? height}) => SizedBox(height: height ?? 3.h);
    static highHeightBox({double? height}) => SizedBox(height: height ?? 5.h);

    static lowWidthBox({double? width}) => SizedBox(width: width ?? 3.w);
    static middleWidthBox({double? width}) => SizedBox(width: width ?? 6.w);
    static highWidthBox({double? width}) => SizedBox(width: width ?? 10.w);
 
}
