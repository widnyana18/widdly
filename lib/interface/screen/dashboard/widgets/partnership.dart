import 'package:flutter/material.dart';

class Partnership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Text(
          'Sponsorship',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: 'Raleway',
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          width: width * .25,
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: List.generate(
              6,
              (idx) {
                return Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(-1, 3),
                        blurRadius: 6,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/fox-book.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 50),
        Text(
          'Partnership',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: 'Raleway',
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          width: width * .25,
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: List.generate(
              6,
              (idx) {
                return Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(-1, 3),
                        blurRadius: 6,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/leaf.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
