import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        width: 144,
        height: 36,
        decoration: BoxDecoration(
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(8, 6),
              blurRadius: 4,
            ),
            BoxShadow(
              color: Color(0xff2D347D),
              offset: Offset(-8, -6),
              blurRadius: 10,
            ),
          ],
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff192069),
                Color(0xff202770),
              ],
              tileMode: TileMode.mirror),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Container(
            width: 140,
            height: 32,
            decoration: BoxDecoration(
              // border: Border.all(
              //   width: 2,
              //   color: Color(0xff000000),
              // ),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xff232A73),
                    Color(0xff0A115A),
                  ],
                  tileMode: TileMode.mirror),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Inter',
                  color: Theme.of(context).primaryColorLight),
            )),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
