import 'package:flutter/material.dart';
import 'package:counter7/data.dart' as data;

class Budget extends StatefulWidget {
  const Budget({super.key});

  @override
  State<StatefulWidget> createState() => _BudgetListState();
}

class _BudgetListState extends State<Budget> {

  List<Widget> getBudgetWidget() {
    List<Widget> list = <Widget>[];
    for (var element in data.listBudget) {
      list.add(
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(5),
              shadowColor: Colors.grey,
              child: ListTile(
                title: Text(element.title),
                subtitle: Text("Rp${element.nominal}"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(element.type),
                    
                  ],
                ),
              ),
            ),
          )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Budget"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: getBudgetWidget(),
        )
      )
    );
  }
}