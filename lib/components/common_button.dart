import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final onPressed;
  CommonButton({this.title, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        FocusScope.of(context).requestFocus();
        onPressed();
      },
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.button.copyWith(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}