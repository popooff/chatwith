import 'package:chatwith/constants/utils.dart';
import 'package:chatwith/models/message.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


class ChatNotifier extends StateNotifier<List<Message>> {
  ChatNotifier() : super($utils.chats);
}