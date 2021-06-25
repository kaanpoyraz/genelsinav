import 'package:flutter/material.dart';
import 'package:genel_sinav/ekranlar/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'file:///C:/Users/kaan_/AndroidStudioProjects/genel_sinav/lib/ekranlar/ulke.dart';
import 'package:flutter/material.dart';
import 'ekranlar/tumulkeler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LoginPage());
}

