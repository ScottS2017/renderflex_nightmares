import 'package:flutter/material.dart';
import 'package:renderflex_nightmares/app/app_images.dart';

class ConstraintsExample extends StatelessWidget {
  final String title;

  const ConstraintsExample({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[

          /// ***************************************
          /// This is what happens with the default main axis size (max)
          /// and a child that doesn't use all that space
          const SizedBox(
            height: 8,
          ),
          Expanded(
            /// The black Containers allow you to see where the Containers
            /// really are.
            child: Center(
              child: Container(
                color: Colors.black,
                
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    /// Flexfit.loose is basically doing not here. It's only to help
                    /// you see the difference in how loose and tight behave.
                    /// Here, it allows the image to determine its own width
                    Flexible(
                      fit:FlexFit.loose,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 6,
                          ),
                        ),
                        child: Image.asset(
                          AppImages.karma,
                          /// The width of the image will be calculated based on the
                          /// height that is calculated at runtime
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          /// ***************************************
          /// This is the same thing as above, without the black container
          /// to show you that the Column is actually taking up all of the
          /// available space, but the unused portion of that space is
          /// transparent
          const SizedBox(
            height: 8,
          ),
          Expanded(
            /// The black Containers allow you to see where the Containers
            /// really are.
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Flexible(
                    fit:FlexFit.loose,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          style: BorderStyle.solid,
                          width: 6,
                        ),
                      ),
                      child: Image.asset(
                        AppImages.karma,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          /// ***************************************
          /// This is what happens with the main axis size set to min
          /// and a child that doesn't use all the available space. The Row
          /// does not use all the available space
          const SizedBox(
            height: 8,
          ),
          Expanded(
            /// This Row is allowing the main axis to shrink to match the
            /// size of the child, so you don't see any extra black here
            child: Center(
              child: Container(
                color: Colors.black,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    /// Again, loose fit does nothing here
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                            style: BorderStyle.solid,
                            width: 6,
                          ),
                        ),
                        child: Image.asset(
                          AppImages.karma,
                          /// Compare this fill style image to the one a the bottom
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// ***************************************
          /// This is what happens with the main axis size set to min
          /// but an Expanded (FlexFit.tight) is added. The Flexible
          /// forces the Row to be as large as it can, despite the fact that
          /// the main axis size is set to min.
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Center(
              child: Container(
                /// You don't see any of this black because the Row has been
                /// forced to use up all of the space and is covering the black
                color: Colors.black,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    /// Flexfit.tight is basically the same thing as an Expanded here.
                    /// It's forcing the parent Row to be as large as possible
                    /// in the MainAxis
                    Flexible(
                      fit:FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            color: Colors.purple,
                            style: BorderStyle.solid,
                            width: 6,
                          ),
                        ),
                        child: Image.asset(
                          AppImages.karma,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// ***************************************
          /// This is what happens with the main axis size set to min
          /// but an Expanded (FlexFit.tight) is added. The Flexible
          /// forces the Row to be as large as it can, despite the fact that
          /// the main axis size is set to min.
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Center(
              child: Container(
                color: Colors.black,
                child: Row(
                  /// The size you set doesn't matter because the Expanded
                  /// child forces the main axis to take all the space it can get
                  mainAxisSize: MainAxisSize.max,
                  // mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 6,
                          ),
                        ),
                        child: Image.asset(
                          AppImages.karma,
                          /// Compare this fill style image to the one bordered in
                          /// green
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
