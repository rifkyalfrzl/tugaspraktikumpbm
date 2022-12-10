import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'db_provider.dart';
import 'detail_barang.dart';
import 'tambah_barang.dart';
import 'form_update.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("WAROENGKU"),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const TambahBarang()));
          }, child: const Icon(Icons.add, color: Colors.white,))
        ],
      ),
      body: Consumer<DbProvider>(
        builder: (context, provider, child) {
          final barangs = provider.barangs;
          return ListView.builder(
            itemCount: barangs.length,
            itemBuilder: (context, index) {
              final barang = barangs[index];
              return Dismissible(
                key: Key(barang.id.toString()),
                background: Container(color: Colors.pinkAccent),
                onDismissed: (direction) {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Card(
                    color: Colors.amber,
                    elevation: 5,
                    child: ListTile(
                      title: Text(barang.namaBarang),
                      subtitle: Text(barang.harga),
                      onTap: () async {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => DetailBarang(barang: barang),));
                      },
                      trailing: Wrap(children: <Widget>[
                        IconButton(
                          onPressed: () async {
                            Provider.of<DbProvider>(context, listen: false)
                                .deleteBarangs(barang.id!);
                          },
                          icon: const Icon(Icons.delete),
                        ),
                        IconButton(
                          onPressed: () async {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return UpdateBarang(barang: barang);
                            }));
                          },
                          icon: const Icon(Icons.edit_note),
                        ),
                      ]),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.swapTheme();
        },
    child: const Icon(Icons.color_lens, color: Colors.amber,),
      ),
    );
  }
}