// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'db_helper.dart';
import 'barang.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme = ThemeData.dark().copyWith(primaryColor: Colors.black);

  ThemeData light = ThemeData.light().copyWith(primaryColor: Colors.blue);
  ThemeData dark = ThemeData.dark().copyWith(primaryColor: Colors.black);

  ThemeProvider({bool? isDarkMode}){
    _selectedTheme = isDarkMode! ? dark : light;
  }

  Future<void> swapTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (_selectedTheme == dark) {
      _selectedTheme = light;
      prefs.setBool("isDarkTheme", false);
      print(prefs.getBool("isDarkTheme"));
      print("LIGHT MODE");
    } else {
      _selectedTheme = dark;
      prefs.setBool("isDarkTheme", true);
      print(prefs.getBool("isDarkTheme"));
      print("DARK MODE");
    }
    notifyListeners();
  }

  ThemeData get getTheme => _selectedTheme;
}

class DbProvider extends ChangeNotifier {
  late DatabaseHelper _dbHelper;

  List<Barang> _barangs = [];

  List<Barang> get barangs => _barangs;

  DbProvider() {
    _dbHelper = DatabaseHelper();
    _getAllBarangs();
  }
  

  void _getAllBarangs() async {
    _barangs = await _dbHelper.getBarangs();
    notifyListeners();
  }

  Future<void> addBarangs(Barang barang) async {
    await _dbHelper.insertBarang(barang);
    _getAllBarangs();
  }

  Future<void> deleteBarangs(int id) async {
    await _dbHelper.deleteBarang(id);
    _getAllBarangs();
  }

  Future<void> updateBarangs(Barang barang) async {
    await _dbHelper.updateBarang(barang);
    _getAllBarangs();
  }
}