import 'package:flutter/material.dart';

class screenPaint extends StatelessWidget {
  final String? text;

  const screenPaint({  this.text}) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.withOpacity(0.4),
      body: Stack(children: [
        Container(

          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: CustomPaint(
            painter: BackgroundPainter(),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(14.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //     Icon(Icons.arrow_back,),
        //     ImageIcon(AssetImage('assets/icon/Notification.png'))
        //   ],),
        // )
      ],
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    //
    // Paint paint=Paint()..color=Colors.orange.shade300;
    // Paint paint2=Paint()..color=Colors.blue.withOpacity(0.2);
    // Paint paint3=Paint()..color=Colors.blue.shade300;
    //
    // final path= Path();
    //
    // path.moveTo(0, 0);
    // path.lineTo(size.width*0.6, 0);
    // path.lineTo(size.width*0.4, size.height*0.4);
    // // path.relativeQuadraticBezierTo(0, 9.5, 10, -5);
    // path.lineTo(0, size.height*0.4);
    // path.close();
    //
    //
    // final path2= Path();
    //
    // path2.moveTo(size.width, 0);
    // path2.lineTo(size.width*0.5, 0);
    // path2.lineTo(size.width*0.35, size.height*0.3);
    // path2.lineTo(size.width, size.height*0.3);
    // path2.close();
    //
    //
    // final path3= Path();
    //
    // path3.moveTo(size.width, 0);
    // path3.lineTo(size.width*0.7, 0);
    // path3.lineTo(size.width*0.45, size.height*0.5);
    // path3.lineTo(size.width*0.9, size.height*0.5);
    // path3.lineTo(size.width, size.height*0.3);
    // path3.close();
    //
    //
    //
    // canvas.drawPath(path, paint);
    // canvas.drawPath(path2, paint2);
    // canvas.drawPath(path3, paint3);



/////////////////////////////////////////////////



     Paint paint =Paint()..color=Colors.brown.withOpacity(0.3);
     // Paint paint2 =Paint()..color=Colors.orange.shade300;

     final path= Path();

     path.moveTo(0, 0);
     path.lineTo(size.width*0.6, 0);
     path.lineTo(0, size.height*2);
     path.close();

     final path2= Path();

     path2.moveTo(size.width, 0);
     path2.lineTo(size.width*0.8, 0);
     path2.lineTo(size.width*0.5, size.height);
     path2.lineTo(size.width, size.height);

     path2.close();

     // final path3=Path();
     //
     // path3.moveTo(0, 0);
     // path3.lineTo(0, size.height*0.15);
     // path3.lineTo(size.width * 0.6, size.height*0.3);
     // path3.relativeQuadraticBezierTo(15, 3.5, 30, -5);
     // path3.lineTo(size.width, size.height*0.2);
     // path3.lineTo(size.width, 0);
     // path3.close();
     // canvas.drawPath(path3, paint2);

     canvas.drawPath(path, paint);
     canvas.drawPath(path2, paint);



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
       return false;
  }
}


