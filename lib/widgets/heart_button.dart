import 'package:flutter/material.dart';

class HeartButton extends StatelessWidget {
  final String buttonName;
  const HeartButton({
    super.key,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Icon(
          Icons.favorite,
          color: const Color.fromRGBO(161, 107, 243, 1.0),
          size: MediaQuery.of(context).size.width / 4,
        ),
        Text(
          buttonName,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 12,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(0, 0, 0, 1.0)),
        )
      ],
    );
  }
}
