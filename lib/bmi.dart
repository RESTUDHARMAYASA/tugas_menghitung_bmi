import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'identitas.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;

  String jenisKelamin;
  String tanggalLahir;
  String umur;

  var _nama = new TextEditingController();
  var _jk = new TextEditingController();
  var _tl = new TextEditingController();
  var _um = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        //backgroundColor: Colors.blue[100],
        appBar: AppBar(
          //backgroundColor: Colors.blue[100],
          centerTitle: true,
          leading: Icon(
            Icons.app_settings_alt_sharp,
            color: Colors.black,
          ),
          title: Text('MENGHITUNG BMI', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),

                child:
                Image.asset('assets/bmi.jpg',
                  fit: BoxFit.fitWidth,

                ),
              ),
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text('Masukan Data',style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
            ),

              Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
                //color: Colors.blue[700],
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 3,
                    )
                  ),
                  child: Row(
                    children: <Widget>[

                      Expanded(

                        child: TextField(

                          onChanged: (txt) {
                            setState(() {
                              tinggi = int.parse(txt);
                            });

                          },

                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white
                          ),
                          decoration: InputDecoration(
                              suffix: Text('cm'),
                              fillColor: Colors.deepOrange,
                              filled: true,
                              hintText: 'Tinggi'),
                        ),
                      ),

                      SizedBox(
                        width:5,
                      ),

                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              berat = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('kg'),
                              fillColor: Colors.deepOrange,
                              filled: true,
                              hintText: 'Berat'),
                        ),
                      ),
                    ],
                  )),


              Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.deepOrange,
                        width: 3,
                      )
                  ),
                // color: Colors.blue[700],

                  child: Row(
                    children: <Widget>[

                      Expanded(
                        child: TextField(
                          controller: _nama,
                          keyboardType: TextInputType.text,
                          maxLength: 300,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,

                          ),
                          decoration: InputDecoration(

                              fillColor: Colors.deepOrange,
                              filled: true,
                              hintText: 'Nama'),
                        ),
                      ),

                      SizedBox(
                        width:5,
                      ),


                      Expanded(
                        child: TextField(

                          controller: _jk,
                          keyboardType: TextInputType.text,
                          maxLength: 300,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(

                              fillColor: Colors.deepOrange,
                              filled: true,
                              hintText: 'Jenis Kelamin'),
                        ),
                      ),

                    ],
                  )),


              Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.deepOrange,
                        width: 3,
                      )
                  ),
                // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[

                      Expanded(
                        child: TextField(
                          controller: _tl,
                          keyboardType: TextInputType.text,
                          maxLength: 300,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(

                              fillColor: Colors.deepOrange,
                              filled: true,
                              hintText: 'Tanggal Lahir'),
                        ),
                      ),
                    ],
                  )),

              Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.deepOrange,
                        width: 3,
                      )
                  ),
                // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[

                      Expanded(
                        child: TextField(
                          controller: _um,
                          keyboardType: TextInputType.text,
                          maxLength: 300,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(

                              fillColor: Colors.deepOrange,
                              filled: true,
                              hintText: 'Umur'),
                        ),
                      ),
                    ],
                  )),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(top: 10,bottom: 10,left: 50,right: 50),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(

                      MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan: berat, nama_pengguna:_nama.text, jenis_kelammin:_jk.text, tanggal_lahir:_tl.text, umur:_um.text)),
                    );
                  },

                  color: Colors.blue,
                  child: Text(
                    'HITUNG',
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),


              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(top: 10,bottom: 10,left: 100,right: 100),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(

                      MaterialPageRoute(builder: (context) => HalamanSatu()),
                    );
                  },

                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  child: Text(
                    'BIODATA',
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),



            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          //color: Colors.transparen,
          child: Container(
            height: 30,
            color: Colors.white12,
            alignment: Alignment.center,
            child: Text(
              'Developed by Made Restu Dharma Yasa',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          //elevation: 0,
        ),
      );
  }
}