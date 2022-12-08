import 'package:chatwith/providers/providers.dart';
import 'package:chatwith/views/chat_screen.dart';
import 'package:chatwith/constants/utils.dart';
import 'package:chatwith/widgets/avatar.dart';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chats = ref.read(chatProvider);
    final users = ref.read(userProvider.notifier);

    return Container(
      margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final user = users.findById(chats[index].sender);

                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ChatScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: chats[index].unread
                          ? Theme.of(context).primaryColor.withOpacity(0.1)
                          : Colors.white,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Avatar(
                                    url: user.avatar,
                                    unread: !chats[index].unread
                                ),

                                const SizedBox(width: 10),

                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${user.name} ${user.surname}',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: $utils.color.primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      const SizedBox(height: 4),

                                      SizedBox(
                                        width: 60.w,
                                        child: Text(
                                          chats[index].text,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                      ),
                                    ]),
                              ]),

                          Expanded(
                            child: Column(
                                children: [
                                  Text(
                                    chats[index].sendAt(),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 8),

                                  chats[index].unread ? Container(
                                    height: 20,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'NEW',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ) : const Text('')
                                ]),
                          )
                        ]),
                  ),
                );
              }
          ),
        )
    );
  }
}
