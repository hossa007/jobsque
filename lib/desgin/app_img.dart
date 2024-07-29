import 'package:flutter/material.dart';

class AppImg extends StatelessWidget {
  final String path;
  final double? height,width;
  final BoxFit fit;
  final Color? color;
  const AppImg({super.key, required this.path, this.height, this.width,  this.fit = BoxFit.scaleDown,  this.color});

  @override
  Widget build(BuildContext context) {
    if(path.startsWith("http")){
      return Image.network(
        path,
      fit: fit,
        width: width,
        height: height,
        color: color,
      );
    }

   return Image.asset("assets/img/$path",
     fit: fit,
     width: width,
     height: height,
     color: color,);
  }

}
