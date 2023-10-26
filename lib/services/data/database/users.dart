import 'package:uts_2020130036/models/user_model.dart';
import 'package:uts_2020130036/services/data/database/address.dart';

User? currentUser;

final user1 = User(
  userId: "0",
  name: "Bruno Fernandes",
  email: "bruno@gmail.com",
  password: "a",
  createdAt: "06.05.2023",
  modifyAt: "06.05.2023",
  devices: [],
  cards: <int>[],
  favourites: <int>[],
  addresses: userAddresses,
);
final user2 = User(
  userId: "1",
  name: "Muhamad Ariq Rasyid",
  email: "mariq.rasyid@gmail.com",
  password: "Bl1zz4rd03",
  createdAt: "10.23.2023",
  modifyAt: "10.23.2023",
  devices: [],
  cards: <int>[],
  favourites: <int>[],
  addresses: userAddresses,
);

final usersList = <User>[
  user1,
  user2,
];
