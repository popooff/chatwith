import 'package:chatwith/models/message.dart';
import 'package:chatwith/providers/providers.dart';
import 'package:chatwith/widgets/avatar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:responsive_sizer/responsive_sizer.dart';


class MessageChat extends ConsumerWidget {

  final bool direction;
  final Message message;

  const MessageChat({
    Key? key,
    required this.direction,
    required this.message
  }) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider.notifier);

    late final BorderRadius borderRadius;
    late final Alignment alignment;
    late final EdgeInsets margin;
    late final Color color;

    if (direction) {
      alignment = Alignment.centerRight;
      color = Theme.of(context).primaryColor.withOpacity(0.1);
      margin = EdgeInsets.only(right: 20.w, top: 8, bottom: 8);
      borderRadius = const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      );

    } else {
      alignment = Alignment.centerLeft;
      color = Theme.of(context).colorScheme.secondary;
      margin = EdgeInsets.only(left: 20.w, top: 8, bottom: 8);
      borderRadius = const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );
    }

    return Row(
      children: [

        if (direction)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Avatar(
              url: user.findById(message.sender).avatar,
              unread: true
            ),
          ),

        Expanded(
          child: Container(
            margin: margin,
            child: Container(
              alignment: alignment,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: borderRadius
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message.sendAt(),
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      SizedBox(
                        width: 70.w,
                        child: Text(
                          message.text,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        )

      ]);

    return Container(
      margin: margin,
      child: Container(
        alignment: alignment,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.sendAt(),
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  width: 70.w,
                  child: Text(
                    message.text,
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
