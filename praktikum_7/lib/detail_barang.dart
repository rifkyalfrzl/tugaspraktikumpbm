import 'package:flutter/material.dart';
import 'barang.dart';

class DetailBarang extends StatefulWidget {
  const DetailBarang({super.key,required this.barang});

  final Barang barang;

  @override
  State<DetailBarang> createState() => _DetailBarangState();
}

class _DetailBarangState extends State<DetailBarang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 300,
          child: Text("Detail")),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(widget.barang.namaBarang,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(widget.barang.harga,style: const TextStyle(fontWeight: FontWeight.w300),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 5),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(widget.barang.stok,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)),
              ),
              
            ],
          ),
          ),
    );
  }
}