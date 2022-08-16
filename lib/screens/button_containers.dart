import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Button_containers extends StatelessWidget {
  final String buttoniconpath;
  final String buttonname;
  const Button_containers({Key? key, required this.buttoniconpath, required this.buttonname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 25),
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                    buttoniconpath),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          buttonname,
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
