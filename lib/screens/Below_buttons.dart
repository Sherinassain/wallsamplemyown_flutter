import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Below_buttons extends StatelessWidget {
  final String belowiconpath;
  final String headertext;
  final String footertext;
  const Below_buttons(
      {Key? key,
      required this.belowiconpath,
      required this.headertext,
      required this.footertext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 13),
      child: Container(
        height: 84,
        width: 320,
        decoration: BoxDecoration(
            color: Colors.white54, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(11),
                    child: Image.network(belowiconpath),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    headertext,
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    footertext,
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
