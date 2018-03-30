import 'package:flutter/material.dart';
import 'package:catbox/ui/cat_info/footer/cat_info_footer.dart';
import 'package:catbox/ui/cat_info/cat_info_body.dart';
import 'package:catbox/ui/cat_info/header/cat_info_header.dart';
import 'package:catbox/ui/cats/cat.dart';
import 'package:meta/meta.dart';

class CatDetailsPage extends StatefulWidget {
  CatDetailsPage(
    this.cat, {
    @required this.avatarTag,
  });

  final Cat cat;
  final Object avatarTag;

  @override
  _CatDetailsPageState createState() => new _CatDetailsPageState();
}

class _CatDetailsPageState extends State<CatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var linearGradient = new BoxDecoration(
      gradient: new LinearGradient(
        begin: FractionalOffset.centerRight,
        end: FractionalOffset.bottomLeft,
        colors: [
          const Color(0xFF413070),
          const Color(0xFF2B264A),
        ],
      ),
    );

    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          decoration: linearGradient,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new CatDetailHeader(
                widget.cat,
                avatarTag: widget.avatarTag,
              ),
              new Padding(
                padding: const EdgeInsets.all(24.0),
                child: new CatDetailBody(widget.cat),
              ),
              new CatShowcase(widget.cat),
            ],
          ),
        ),
      ),
    );
  }
}