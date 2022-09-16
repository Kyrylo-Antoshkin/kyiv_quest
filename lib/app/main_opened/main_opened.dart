import 'package:flutter/material.dart';

class MainOpened extends StatelessWidget {
  const MainOpened({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).iconTheme.color,
            size: 37,
        ),
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(
                  Icons.menu,
                  size: 37,
                ),
              ),
            );
          }
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              onPressed: () => debugPrint('Presed on account button'),
              icon: const Icon(
                Icons.account_circle_outlined,
                size: 37,
              ),
            ),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      drawer: const Drawer(
        backgroundColor: Color(0xff1C236C),
      ),
    );
  }
}
