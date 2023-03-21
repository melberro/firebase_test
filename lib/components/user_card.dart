import 'package:firebase_test/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel userList;
  const UserCard({super.key, required this.userList});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UsersProvider>(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Stack(children: [
            Container(
              child: Card(
                  color: Colors.grey[300],
                  elevation: 8.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 13),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.83,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  NetworkImage(userList.image.toString()),
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  width: 150,
                                  color: Colors.black54,
                                  height: 2,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(userList.email.toString()),
                                Text(userList.age.toString()),
                                Text(userList.city.toString()),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    userList.name.toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Mobile Developer',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text('Softito'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: IconButton(
                alignment: Alignment.topLeft,
                color: Colors.red,
                onPressed: () {
                  userProvider.deleteUserProvider(userList.id.toString());
                },
                icon: Icon(Icons.delete),
              ),
            ),
          ]),
        ),
        // Spacer(),
        // Column(
        //   children: [
        //     IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        //     IconButton(
        //         onPressed: () {},
        //         icon: Icon(
        //           Icons.update,
        //         )),
        //   ],
        // ),
      ],
    );
  }
}
