import 'package:chatwith/providers/messages.dart';
import 'package:chatwith/providers/users.dart';
import 'package:chatwith/providers/chats.dart';
import 'package:chatwith/models/message.dart';
import 'package:chatwith/models/user.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


final userProvider = StateNotifierProvider<UserNotifier, List<User>>(
    (ref) => UserNotifier()
);

final chatProvider = StateNotifierProvider<ChatNotifier, List<Message>>(
        (ref) => ChatNotifier()
);

final messageProvider = StateNotifierProvider<MessageNotifier, List<Message>>(
        (ref) => MessageNotifier()
);
