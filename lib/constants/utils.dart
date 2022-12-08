import 'package:chatwith/constants/color.dart';
import 'package:chatwith/models/message.dart';
import 'package:chatwith/models/user.dart';


final $utils = Utils();

class Utils {

  late final color = ChatColor();

  final chats = [
    Message(
      sender: 1,
      time: DateTime.parse('2022-12-08 18:27:00'),
      text: 'Sed efficitur mi ut dui.',
      unread: true,
    ),
    Message(
      sender: 2,
      time: DateTime.parse('2022-12-08 15:21:00'),
      text: 'Nam risus est, varius eu ullamcorper.',
      unread: true,
    ),
    Message(
      sender: 3,
      time: DateTime.parse('2022-12-08 15:16:00'),
      text: 'Morbi congue faucibus rhoncus. Donec venenatis.',
      unread: false,
    ),
    Message(
      sender: 4,
      time: DateTime.parse('2022-12-08 13:22:00'),
      text: 'Donec tempor sed leo.',
      unread: true,
    ),
    Message(
      sender: 5,
      time: DateTime.parse('2022-12-08 13:01:00'),
      text: 'Aliquam pellentesque enim at mauris pellentesque.',
      unread: false,
    ),
    Message(
      sender: 6,
      time: DateTime.parse('2022-12-08 10:46:00'),
      text: 'Vivamus ac feugiat neque.',
      unread: true,
    ),
    Message(
      sender: 7,
      time: DateTime.parse('2022-12-08 06:16:00'),
      text: 'Phasellus ornare purus non.',
      unread: false,
    ),
    Message(
      sender: 8,
      time: DateTime.parse('2022-12-08 02:56:00'),
      text: 'Pellentesque laoreet pharetra justo et consequat. Donec tempus arcu nibh.',
      unread: false,
    ),
  ];

  // EXAMPLE MESSAGES IN CHAT SCREEN
  final messages = [
    Message(
      sender: 2,
      time: DateTime.parse('2022-12-08 15:16:00'),
      text: 'Hey',
      unread: true,
    ),
    Message(
      sender: 0,
      time: DateTime.parse('2022-12-08 15:16:00'),
      text: 'Hello',
      unread: true,
    ),
    Message(
      sender: 2,
      time: DateTime.parse('2022-12-08 15:16:00'),
      text: 'How are you?',
      unread: true,
    ),
    Message(
      sender: 0,
      time: DateTime.parse('2022-12-08 15:16:00'),
      text: 'Well, you?',
      unread: true,
    ),
    Message(
      sender: 0,
      time: DateTime.parse('2022-12-08 15:16:00'),
      text: 'All good?',
      unread: true,
    ),
    Message(
      sender: 2,
      time: DateTime.parse('2022-12-08 15:16:00'),
      text: 'Yes, all good!',
      unread: true,
    ),

    Message(
      sender: 0,
      time: DateTime.parse('2022-12-08 15:16:00'),
      text: 'Nice, see you!',
      unread: true,
    ),
  ];


  final users = [
    User(
      id: 1,
      name: 'Antonio',
      surname: 'Castello',
      avatar: 'https://images.unsplash.com/photo-1485206412256-701ccc5b93ca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
    User(
      id: 2,
      name: 'Luigi',
      surname: 'Volta',
      avatar: 'https://images.unsplash.com/photo-1485528562718-2ae1c8419ae2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
    User(
      id: 3,
      name: 'Cassandra',
      surname: 'Parini',
      avatar: 'https://images.unsplash.com/photo-1468186376524-b53e47314061?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
    ),
    User(
      id: 4,
      name: 'Adriana',
      surname: 'Camilleri',
      avatar: 'https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
    User(
      id: 5,
      name: 'Susanna',
      surname: 'Filogamo',
      avatar: 'https://images.unsplash.com/photo-1485727749690-d091e8284ef3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
    User(
      id: 6,
      name: 'Sandro',
      surname: 'Offredi',
      avatar: 'https://images.unsplash.com/photo-1521112376370-0a3b01544ab1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
    ),
    User(
      id: 7,
      name: 'Gino',
      surname: 'Balotelli',
      avatar: 'https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
    ),
    User(
      id: 8,
      name: 'Orazio',
      surname: 'Caracciolo',
      avatar: 'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800&q=60',
    ),
  ];
}
