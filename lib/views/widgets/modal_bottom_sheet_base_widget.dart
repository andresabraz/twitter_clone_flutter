import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/widgets/action_bottom_sheet_widget.dart';

class ModalBottomSheetBaseWidget extends StatelessWidget {
  final List<ActionBottomSheetWidget> actions;

  ModalBottomSheetBaseWidget(this.actions);

  Widget _buildTopLine() {
    return Container(
      height: 5,
      width: 40,
      color: ProjectColors.grayBackground,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        _buildTopLine(),
        ...actions,
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: ProjectColors.grayBackground,
            child: Text('Cancel', style: Styles.h6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minWidth: double.infinity,
            height: 50,
            elevation: 0,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
