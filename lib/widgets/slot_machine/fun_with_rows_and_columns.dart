import 'package:flutter/material.dart';
import 'package:renderflex_nightmares/widgets/slot_machine/icons_column.dart';

/// 1) This class is the whole page, with all the parts assembled
class FunWithRowsAndColumns extends StatelessWidget {
  const FunWithRowsAndColumns({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Insanity for Fun!'),
      ),
      /// The SingleChildScrollView allows you to have a single child
      /// that is so large it would normally overflow off the page. This
      /// causes it to scroll, instead. Note we had to set the direction
      /// to horizontal in order for it to hold all of our Columns
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            /// These are the vertical Columns you see lined up horizontally
            /// in the SingleChildScrollView above
            const IconsColumn(),
            const IconsColumn(),
            const IconsColumn(),
            const IconsColumn(),
            const IconsColumn(),
            const IconsColumn(),
            const IconsColumn(),
            const IconsColumn(),
            const IconsColumn(),
          ],
        ),
      ),
    );
  }
}




