import 'package:counter7/budget.dart';
import 'package:counter7/main.dart';
import 'package:counter7/form.dart';
import 'package:counter7/mywatch2list.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              Navigator.pop(context);
              // Routing the menu to the main page
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => const MyHomePage()),
              // );
            },
          ),
          ListTile(
        
            title: const Text('Tambah Budget'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BudgetForm()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Budget()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Watchlist()),
              );
            },
          ),
        ],
      ),
    );
  }
}