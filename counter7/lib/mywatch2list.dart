import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:counter7/budget.dart';
import 'package:counter7/form.dart';
import 'package:counter7/model/mywatchlist.dart';
import 'package:counter7/mywatch3list.dart';

List<Mywatchlist> watchlistdata = [];

class Watchlist extends StatefulWidget {
  const Watchlist({super.key});

  @override
  State<Watchlist> createState() => _WatchlistState();
}

class _WatchlistState extends State<Watchlist> {

  @override
  Widget build(BuildContext context) {
    
    Future<List<Mywatchlist>> fetchWatchlist() async {
        var url = Uri.parse('https://dhafiano-tugas3.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
          url,
          headers: {
              "Access-Control-Allow-Origin": "*",
              "Content-Type": "application/json",
          },
        );

        var data = jsonDecode(utf8.decode(response.bodyBytes));

        List<Mywatchlist> listwatch = [];
        for (var d in data) {
          if (d != null) {
              Mywatchlist listofmovie = Mywatchlist.fromJson(d);
              listwatch.add(Mywatchlist.fromJson(d));
              watchlistdata.add(listofmovie);

          }
        }
        return listwatch;
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text('MyWatchlist'),
      ),
      body: FutureBuilder(
        future: fetchWatchlist(),
        builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
            } else {
            if (!snapshot.hasData) {
                return Column(
                children: const [
                    Text(
                    "Tidak ada Watchlist",
                    style: TextStyle(
                        color: Color(0xff59A5D8),
                        fontSize: 20),
                    ),
                    SizedBox(height: 8),
                ],
                );
            } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index)=> InkWell(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => WatchlistDetails(pk: snapshot.data[index].pk - 1,))
                        );
                      },
                      
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(

                          color:Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 120, 110, 110),
                                blurRadius: 3.0,
                                spreadRadius: -2,
                                offset: Offset(0, 2.5),
                            )
                          ]
                        ),
                        child: Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                "${snapshot.data![index].fields.title}",
                                style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                ),
                                
                            ),
                        ],
                        ),
                      ),  
                  ),
                );
              }
            }
          }
        )
    );
  }
}