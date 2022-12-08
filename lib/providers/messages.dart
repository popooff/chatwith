import 'package:chatwith/constants/utils.dart';
import 'package:chatwith/models/message.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


class MessageNotifier extends StateNotifier<List<Message>> {
  MessageNotifier() : super($utils.messages);
}
