import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Josivan Marques'),
            accountEmail: Text('jhosivan@outlook.com'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            subtitle: Text('Tela de Inicio'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Logout'),
            subtitle: Text('Finalizar sessão'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      )),
      appBar: AppBar(
        title: const Center(child: Text('Home Page')),
        actions: const [CustomSwitcher()],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(12),
        child: Row(children: [
          buildCard(1),
          const SizedBox(
            width: 12.0,
          ),
          buildCard(2),
          const SizedBox(
            width: 12.0,
          ),
          buildCard(3),
          const SizedBox(
            width: 12.0,
          ),
          buildCard(4),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

Widget buildCard(int index) => Container(
      color: Colors.blue,
      width: 150,
      height: 150,
      child: Center(child: Text('$index')),
    );

class CustomSwitcher extends StatefulWidget {
  const CustomSwitcher({super.key});

  @override
  State<CustomSwitcher> createState() => _CustomSwitcherState();
}

class _CustomSwitcherState extends State<CustomSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          setState(() {
            AppController.instance.changeTheme();
          });
        });
  }
}
