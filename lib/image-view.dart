import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ImageView();
}

class _ImageView extends State<ImageView> {
  Image _image;

  @override
  Widget build(BuildContext context) {
    Widget _body() {
      if (_image != null) {
        return _image;
      } else {
        return Center(
          child: MaterialButton(
            onPressed: () {
              setState(() {
                _image = Image.asset('assets/Zurich.jpg');
              });
            },
            child: Text('Tap to select an image'),
          ),
        );
      }
    }

    return Column(
      children: [
        _body(),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 9),
          child: TextField(
            decoration: InputDecoration(hintText: 'Add a note'),
          ),
        )
      ],
    );
  }
}
