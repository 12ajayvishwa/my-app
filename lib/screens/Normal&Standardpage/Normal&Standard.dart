import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jb/constants/color.dart';
import 'dart:ui' as ui;

import 'package:jb/screens/uploadAdhar&Photo/uploadAdhar&Photo.dart';

class NormalAndStandard extends StatefulWidget {
  @override
  _NormalAndStandardState createState() => _NormalAndStandardState();
}

class _NormalAndStandardState extends State<NormalAndStandard> {
  final double _borderRadius = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('image/jainbandhan.png', fit: BoxFit.fill,)],
        ),
        actions: [
          TextButton(
              onPressed: null,
              child: Text("Login",
                style: TextStyle(fontSize: 15, color: jbColor),))
        ],
        backgroundColor: jbColor,
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Please Select Your Plan",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UploadAdharAndPhoto()));
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                  colors: [topColor, bottomColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft
                ),
                boxShadow: [
                  BoxShadow(
                    color: bottomColor,
                    blurRadius: 12,
                    offset: Offset(0,6)
                  )
                ]
              ),
              child: Center(
                  child: TextButton(
                    child: Text("Go For Basic Plan",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
              ),
            ),
          ),
          Divider(thickness: 5,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UploadAdharAndPhoto()));
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                    colors: [topColor, bottomColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft
                ),
                boxShadow: [
                  BoxShadow(
                      color: bottomColor,
                      blurRadius: 12,
                      offset: Offset(0,6)
                  )
                ]
              ),
              child: Center(
                child: Text("Go For Standard Plan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          Divider(thickness: 5,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UploadAdharAndPhoto()));
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_borderRadius),
                  gradient: LinearGradient(
                      colors: [topColor, bottomColor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: bottomColor,
                        blurRadius: 12,
                        offset: Offset(0,6)
                    )
                  ]
              ),
              child: Center(
                child: Text("Go For Premium Plan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

//       body: ListView(
//         children:<Widget>[Center(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Stack(
//               children: <Widget>[
//                 GestureDetector(
//                   onTap:() {print('hello');},
//                   child: Container(
//                     height: 150,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(_borderRadius),
//                       gradient: LinearGradient(
//                         colors: [Colors.pink, Colors.red],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomLeft
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.red,
//                           blurRadius: 12,
//                           offset: Offset(0, 6)
//                         )
//                       ]
//                     ),
//                   ),
//                 ),
//                     Center(
//                       child: Column(
//                         children: <Widget>[
//                           TextButton(
//                             child: Text(
//                               'Go For Basic',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: 45,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold
//                               ),
//                             ),
//                             onPressed: (){
//                               print('Hello');
//                             },
//                           ),
//                         ],
//                       ),
//                     )
//
//                   ],
//             ),
//           ),
//         ),
//         ]
//       ),
//     );
//   }
// }
//
// class CustomCardShapePainter extends CustomPainter{
//   final double radius;
//   final Color startColor;
//   final Color endColor;
//
//   CustomCardShapePainter(this.radius, this.startColor, this.endColor);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     var radius = 24.0;
//
//     var paint = Paint();
//     paint.shader = ui.Gradient.linear(
//       Offset(0, 0), Offset(size.width, size.height), [
//         HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
//       endColor
//     ]
//     );
//     var path = Path()
//     ..moveTo(0, size.height)
//     ..lineTo(size.width - radius, size.height)
//     ..quadraticBezierTo(size.width, size.height, size.width, size.height - radius)
//     ..lineTo(size.width, radius)
//     ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
//       ..lineTo(size.width - 1.5 * radius, 0)
//     ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
//     ..close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
