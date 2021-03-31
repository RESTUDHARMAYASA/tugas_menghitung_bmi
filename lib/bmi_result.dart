import 'package:flutter/material.dart';
import 'dart:math';

import 'bmi.dart';
class BMIResult extends StatelessWidget {



  BMIResult({@required this.tinggi_badan, @required this.berat_badan,  @required this.nama_pengguna, @required this.jenis_kelammin, @required this.tanggal_lahir, @required this.umur});
  final int berat_badan;
  final int tinggi_badan;
  final String nama_pengguna;
  final String jenis_kelammin;
  final String tanggal_lahir;
  final String umur;


  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;

    if (bmi>=28) cBMI="Obese";
    else if (bmi>=23) cBMI="Overweight";
    else if (bmi>=17.5) cBMI="Normal";
    else cBMI="Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL Perhitungan'),
      ),

      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
        border: Border.all(
        color: Colors.deepOrange,
        width: 3,

    )
    ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Biodata Anda dan Hasil Perhitungan BMI'
            ),
            new Text(
              'Nama: ${nama_pengguna}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),

            ),
            new Text(
              'Jenis Kelamin: ${jenis_kelammin}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),

            ),
            new Text(
              'Umur: ${umur}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Colors.blue,

              ),

            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.yellow,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.red,
              ),
            ),
            Text(
              'Rentangan BMI Normal',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),


          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 40,
        child: RaisedButton(

          color: Colors.deepOrange,
          child: Text('KEMBALI',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}