import 'package:flutter/material.dart';

class TopBgClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    final path = Path();    
    
    var axis100 = Offset(size.width, size.height);
    var axis75 = Offset(size.width * .75, size.height * .75);   
    var axis50 = Offset(size.width * .5, size.height * .5); 
    var axis25 = Offset(size.width * .25, size.height * .25);    
    
    path.lineTo(0, size.height * .2);         
    path.quadraticBezierTo(size.width * .01,  axis25.dy * 1.4 , size.width * .08, axis25.dy * 1.2);    
    
    path.quadraticBezierTo(axis25.dx * .5,  axis50.dy * .5, axis25.dx * .8, axis75.dy * .8);
    
    path.quadraticBezierTo(axis25.dx, axis75.dy, axis25.dx * 1.2, axis75.dy * .8);
    
    path.quadraticBezierTo(size.width * .33, axis75.dy * .73, size.width * .37, axis75.dy * .7);
    
    path.quadraticBezierTo(size.width * .4, axis75.dy * .7, size.width * .43, axis75.dy * .88);
    
    path.quadraticBezierTo(axis50.dx, size.height * .97, axis50.dx * 1.1, axis100.dy);
    
    path.quadraticBezierTo(axis50.dx * 1.2,  size.height * .97, axis50.dx * 1.3, size.height * .75);
    
    path.quadraticBezierTo(size.width * .68, axis50.dy * 1.1, size.width * .72, axis50.dy * 1.1);
    
    path.quadraticBezierTo(size.width * .92, axis50.dy * 1.26, axis100.dx, axis25.dy);
    
    path.lineTo(axis100.dx, 0);
    path.close();

    return path;
  }
 
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BottomBgClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();    
    
    var axis100 = Offset(size.width, size.height);
    var axis75 = Offset(size.width * .75, size.height * .75);   
    var axis25 = Offset(size.width * .25, size.height * .25);    
    
    path.lineTo(0, axis25.dy * 1.3);         
    
    path.quadraticBezierTo(axis75.dx, axis100.dy, axis100.dx * .88, axis100.dy);
    
    path.quadraticBezierTo(axis100.dx * .97,  axis100.dy, axis100.dx, axis75.dy * 1.1);
    
    path.lineTo(axis100.dx, 0);
    
        path.quadraticBezierTo(axis100.dx * .94, axis25.dy * .68, axis100.dx * .92, axis25.dy * .8);
    
    path.quadraticBezierTo(axis75.dx * 1.1, axis25.dy * 1.46, axis75.dx * .87, axis25.dy * 1.2);
    path.close();

    return path;
  }
 
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


