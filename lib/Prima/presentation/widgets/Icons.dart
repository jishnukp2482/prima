import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/IconModal.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.iconModal, }) : super(key: key);

  final CustomIconModal iconModal;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(onPressed: null,
            icon:Icon(iconModal.customIconModal),
        ),
        Text(iconModal.title),

      ],
    );
  }
}
