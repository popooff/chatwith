import 'package:flutter/material.dart';


class Avatar extends StatelessWidget {

  final String url;
  final bool unread;

  const Avatar({
    Key? key,
    required this.url,
    required this.unread
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: const Radius.circular(15),
          topLeft: const Radius.circular(15),
          bottomRight: const Radius.circular(15),
          bottomLeft: unread ? const Radius.circular(15) : Radius.zero
        ),
        child: Image.network(url)
      ),
    );
  }
}
