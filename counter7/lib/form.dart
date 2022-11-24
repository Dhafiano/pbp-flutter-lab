import 'package:flutter/material.dart';
import 'package:counter7/data.dart' as data;
import 'package:flutter/services.dart';

class BudgetForm extends StatefulWidget {
  const BudgetForm({super.key});

  @override
  State<StatefulWidget> createState() => _BudgetFormState();
}


class _BudgetFormState extends State<BudgetForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> _listType = ["Pemasukan", "Pengeluaran"];
  String? _title;
  int? _nominal;
  String? _type;

  final _titleController = TextEditingController();
  final _nominalController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      hintText: "Beli baso",
                      labelText: "Judul",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _title = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _title = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon isi judul!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _nominalController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      hintText: "111111",
                      labelText: "Nominal",
                      prefix: const Text("Rp"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _nominal = int.parse(value!);
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = int.parse(value!);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon isi nominal!';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    value: _type,
                    elevation: 16,
                    hint: const Text("Pilih Jenis"),
                    onChanged: (String? value){
                      setState(() {
                        _type = value!;
                      });
                    },
                    items: _listType.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon isi jenis budget!';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            data.listBudget.add(
                data.Budget(
                    title: _title!,
                    nominal: _nominal!,
                    type: _type!,
                 
                )
            );
            _titleController.clear();
            _nominalController.clear();
            final successBar = SnackBar(
                content: const Text("Budget berhasil disimpan!"),
                action: SnackBarAction(
                  label: 'Hide',
                  onPressed: () {
                  },
                ),
            );
            ScaffoldMessenger.of(context).showSnackBar(successBar);
          }
        },
        child:
          const Text(
            "Simpan",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
      ),
    );
  }
}