import 'package:chatwith/widgets/message_chat.dart';
import 'package:chatwith/providers/providers.dart';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


class ChatScreen extends ConsumerWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.read(messageProvider);
    final users = ref.read(userProvider.notifier);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          users.findById(2).name,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          splashRadius: 22,
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            splashRadius: 24,
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 6),

          IconButton(
            onPressed: () {

            },
            splashRadius: 24,
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 6),
        ]),
      body: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(
          width: double.infinity,
          height: double.infinity,
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return MessageChat(direction: messages[index].sender != 0, message: messages[index]);
                    }
                ),
              ),

              Expanded(
                flex: 1,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Message...',
                                    suffixIcon: Icon(Icons.attach_file),
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {

                          },
                        )
                      ])
                  ),
                ),
              )
            ]),
        ),
      ),
    );
  }
}
