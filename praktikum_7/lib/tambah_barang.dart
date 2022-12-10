import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'db_provider.dart';
import 'barang.dart';

class TambahBarang extends StatefulWidget {
  final Barang? barang;

  const TambahBarang({Key? key, this.barang}) : super(key: key);

  @override
  State<TambahBarang> createState() => _TambahBarangState();
}

class _TambahBarangState extends State<TambahBarang> {
  final TextEditingController _namaBarangController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();
  final TextEditingController _stokController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                size: 20,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _namaBarangController,
                  decoration: InputDecoration(
                    label: const Text('Nama Barang'),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2,  color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2,  color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _hargaController,
                  decoration: InputDecoration(
                    label: const Text('Harga Barang'),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _stokController,
                  decoration: InputDecoration(
                    label: const Text('Stok Barang'),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FloatingActionButton.extended(
                      onPressed: () async {
                        final barang = Barang(
                            namaBarang: _namaBarangController.text,
                            harga: _hargaController.text,
                            stok: _stokController.text,);
                        Provider.of<DbProvider>(context, listen: false)
                            .addBarangs(barang);
                        Navigator.pop(context);
                      },
                      label: const Text("Tambah"),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                )
              ]),
        ),
      )),
    );
  }
}