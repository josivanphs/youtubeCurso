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
      appBar: AppBar(
        title: const Center(child: Text('Home Page')),
        actions: const [CustomSwitcher()],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              height: 50.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Contador: $counter',
              ),
              const CustomSwitcher()
            ]),
            Container(
              height: 50.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Contador: $counter',
              ),
              const CustomSwitcher()
            ]),
            Container(
              height: 50.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Contador: $counter',
              ),
              const CustomSwitcher()
            ]),
            Container(
              height: 50.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Contador: $counter',
              ),
              const CustomSwitcher()
            ]),
            Container(
              height: 50.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Contador: $counter',
              ),
              const CustomSwitcher()
            ]),
            Container(
              height: 50.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Contador: $counter',
              ),
              const CustomSwitcher()
            ]),
            Container(
              height: 50.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Contador: $counter',
              ),
              const CustomSwitcher()
            ]),
            Container(
              height: 50.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Contador: $counter',
              ),
              const CustomSwitcher()
            ]),
          ],
        ),
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
