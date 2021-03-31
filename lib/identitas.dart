import 'package:flutter/material.dart';
import 'bmi.dart';

class HalamanSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: new AppBar(
            backgroundColor: Colors.black,
            title: new Center(
              child: new Text("Biodata"),
            )
        ),

        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(150.0),
                child: Image.asset('assets/restu.png',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Made Restu Dharma Yasa", style: TextStyle(color: Colors.white, fontSize: 15, height: 2, fontWeight: FontWeight.bold,),),
              Text(
                "Pendidikan Teknik Informatika",style: TextStyle(color: Colors.white, fontSize: 10, height: 1),),

              Container(
                margin: EdgeInsets.only(top:10),
                padding: EdgeInsets.all(10),
                width: 200,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ContainIcon(0,"BULELENG, BALI",Icons.my_location),
                        ContainIcon(12,"MAHASISWA",Icons.account_circle_outlined),
                      ],),
                    Column(
                      children: <Widget>[
                        ContainIcon(0,"087850174922",Icons.add_ic_call_rounded),
                        ContainIcon(12,"UNDIKSHA",Icons.location_city),
                      ], ),],  ), ),   ],),  ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  const ContainIcon(this.atas,this.isi,this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 85,
        height: 70,

        margin: EdgeInsets.only(top: 10,bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          border: Border.all(width:3,color:Colors.lightBlueAccent,),
        ),

        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 20,
            ),
            Container(
              color: Colors.black,
              margin: EdgeInsets.only(top:10),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )

    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
          height: 1.3,
          fontSize: 10,
          color: Colors.white
      ),
      ),
    );
  }
}