import 'package:chatwith/constants/utils.dart';
import 'package:chatwith/models/user.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


class UserNotifier extends StateNotifier<List<User>> {
  UserNotifier() : super($utils.users);

  User findById(int id) {
    return state.firstWhere((user) => user.id == id);
  }

  List users() {
    return [...state];
  }

}
