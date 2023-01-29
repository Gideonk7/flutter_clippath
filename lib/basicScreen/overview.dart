import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  const Overview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 400,
        decoration: const BoxDecoration(
          color: Colors.brown,
        ),
        child: const Center(
          child: Text(
            "clippath",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize:20,
            ),
          ),
        ),
      ),
    );
  }
}


class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // ignore: todo
    // TODO: implement getClip
    // throw UnimplementedError();
    var path = Path();
    path.lineTo(0, size.height - 70);
    var controlpoint = Offset(50, size.height);
    var endpoint = Offset(size.width/2, size.height);
    path.quadraticBezierTo(controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // ignore: todo
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return true;
  }
  
}