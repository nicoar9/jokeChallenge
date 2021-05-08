import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final function;
  final tag;
  const CustomMaterialButton({Key key, this.function, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: MaterialButton(
        splashColor: Colors.transparent,
        disabledColor: Colors.grey,
        color: Colors.purple[300],
        shape: CircleBorder(),
        onPressed: function,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
