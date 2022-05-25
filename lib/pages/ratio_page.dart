import 'package:flutter/material.dart';
class RatioPage extends StatefulWidget {
  const RatioPage({Key? key}) : super(key: key);
static const String id='ratio_page';
  @override
  State<RatioPage> createState() => _RatioPageState();
}

class _RatioPageState extends State<RatioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio:1/2,
        child: Container(

          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
