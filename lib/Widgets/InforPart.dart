import 'package:flutter/material.dart';

class PaddedTextWidget extends StatelessWidget {
  final String partInformation;

  const PaddedTextWidget({Key? key, required this.partInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        partInformation,
        style: const TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          letterSpacing: 3,
          wordSpacing: 3,
        ),
      ),
    );
  }
}

String infoPart1 =  "GeeksForGeeks is a good platform to learn programming."
" It is an educational website."
"GeeksForGeeks is a good platform to learn programming."
" It is an educational website."
"GeeksForGeeks is a good platform to learn programming."
" It is an educational website.";