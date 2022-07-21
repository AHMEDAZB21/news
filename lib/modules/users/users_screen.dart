import 'package:flutter/material.dart';
import 'package:todoapp2/models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Ahmed Elazb',
      phone: '+201095163399',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed Elazb',
      phone: '+201095169933',
    ),
    UserModel(
      id: 3,
      name: 'Abdo Elazb',
      phone: '+201095169999',
    ),
    UserModel(
      id: 1,
      name: 'Ahmed Elazb',
      phone: '+201095163399',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed Elazb',
      phone: '+201095169933',
    ),
    UserModel(
      id: 3,
      name: 'Abdo Elazb',
      phone: '+201095169999',
    ),
    UserModel(
      id: 1,
      name: 'Ahmed Elazb',
      phone: '+201095163399',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed Elazb',
      phone: '+201095169933',
    ),
    UserModel(
      id: 3,
      name: 'Abdo Elazb',
      phone: '+201095169999',
    ),
    UserModel(
      id: 1,
      name: 'Ahmed Elazb',
      phone: '+201095163399',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed Elazb',
      phone: '+201095169933',
    ),
    UserModel(
      id: 3,
      name: 'Abdo Elazb',
      phone: '+201095169999',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Text(
            'Users',
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
              start: 20.0),
          child: Container(
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
