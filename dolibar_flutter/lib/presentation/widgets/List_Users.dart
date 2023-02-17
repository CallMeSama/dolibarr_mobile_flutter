import 'package:animated_login/presentation/widgets/home_page.dart';
import 'package:animated_login/service/User_service.dart';
import 'package:flutter/material.dart';
import '../../models/User.dart';
import 'addUser.dart';


class PersonIcon extends StatelessWidget {
  final double size;
  final Color color;

  const PersonIcon({Key? key, this.size = 24.0, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.person,
      size: size,
      color: color,
    );
  }
}

class HomeUser extends StatelessWidget {
  const HomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des utilisateurs'),
        backgroundColor: Color.fromARGB(234, 4, 34, 75),
      ),
      body: const Center(
        child: UsersList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserForm()),
          );
        },
        backgroundColor: Color.fromARGB(234, 4, 34, 75),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UsersListState();
  }
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: allUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          List<User>? users = snapshot.data;
          return UserListWidget(userList: users);
        } else {
          return const Center(
            child: Text('Erreur lors de la récupération des utilisateurs.'),
          );
        }
      },
    );
  }
}

class UserListWidget extends StatelessWidget {
  final List<User>? userList;

  const UserListWidget({super.key, required this.userList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: userList?.length,
        itemBuilder: (BuildContext context, int index) {
          final user = userList![index];
          return ListTile(
            leading: PersonIcon(size: 34.0, color: Color.fromARGB(234, 4, 34, 75)),
            title: Text(
              "${user.firstname} ${user.lastname}",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(234, 4, 34, 75),
              ),
            ),
            subtitle: Text("${user.login}  ${user.email}"),
            trailing: IconButton(
              icon: Icon(Icons.star, size: 24.0, color: Colors.yellow),
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton
              },
            ),
            onTap: () {
              
            },
          );
        },
      ),
    ));
  }
}