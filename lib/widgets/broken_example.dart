import 'package:flutter/material.dart';
import 'package:renderflex_nightmares/app/app_images.dart';

class BrokenExample extends StatelessWidget {
  final String title;

  const BrokenExample({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 8,
          ),

          /// If you try to use double.infinity, this will fail
          Container(
            color: Colors.black,
            height: 100,
            // height: double.infinity,
            width: 200,
          ),

          /// This Child Column is trying to be max size and has an Expanded
          // Column(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         width: 200,
          //         color: Colors.green,
          //       ),
          //     ),
          //   ],
          // )

          /// This works with an Expanded because it forces the size to
          /// be what's available, ignoring the double.infinity
          /// But without it, the child actually tries to be double.infinity
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),

             //  Container(
             //    height: 200,
             //    width: double.infinity,
             //    color: Colors.green,
             //  ),
            ],
          )

        ],
      ),
    );
  }
}
