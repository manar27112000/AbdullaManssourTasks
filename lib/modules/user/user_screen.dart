import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';




class UserScreen extends StatelessWidget {
  List<UserModel>users=[
    UserModel(
      id: 1,
      name: 'manar adel',
      phone: '+20115225634'
    ),
    UserModel(
        id: 2,
        name: 'rana adel',
        phone: '+20115325634'
    ),
    UserModel(
        id: 3,
        name: 'mena adel',
        phone: '+20115225634'
    ),
    UserModel(
        id: 4,
        name: 'mohamed adel',
        phone: '+20115325634'
    ),
    UserModel(
        id: 1,
        name: 'manar adel',
        phone: '+20115225634'
    ),
    UserModel(
        id: 2,
        name: 'rana adel',
        phone: '+20115325634'
    ),
    UserModel(
        id: 3,
        name: 'mena adel',
        phone: '+20115225634'
    ),
    UserModel(
        id: 4,
        name: 'mohamed adel',
        phone: '+20115325634'
    ),
  ];
   UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:const Text('Users',style: TextStyle(color: Colors.white),),
        ),
      body:ListView.separated(itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder:(context,index)=>Padding(
            padding: const EdgeInsets.only(right: 15,left: 115),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length) ,


    );
  }

  Widget buildUserItem(UserModel user)=> Padding(
    padding:  EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius:25.0 ,
          child: Text('${user.id}',
            style: TextStyle(fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),),

        ),
        SizedBox(width:20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${user.name}',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            Text('${user.phone}', style: TextStyle(fontSize: 12,color: Colors.grey),),


          ],
        )
      ],
    ),
  );
}
