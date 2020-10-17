import 'package:flutter/material.dart';
import 'package:renderflex_nightmares/widgets/slot_machine/icon_set.dart';

/// 2) This class is a complete vertical Column
class IconsColumn extends StatelessWidget {
  const IconsColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      /// Again, the SingleChildScrollView allows our Column to be larger
      /// than the page is long. It will scroll... but this time, vertically
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            /// Each custom IconSet Widget contains a Column with one
            /// of each Icon we're using, but no repeats. The way we get
            /// the Columns you see to have so many repetitions is by
            /// dropping three sets into this Column
            const IconSet(),
            const IconSet(),
            const IconSet(),
          ],
        ),
      ),
    );
  }
}