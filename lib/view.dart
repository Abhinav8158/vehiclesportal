import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'book rental.dart';
import 'con.dart';


class view extends StatefulWidget {
  view({Key? key,required this.rental_id}) : super(key: key);
  String rental_id;

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  Future<dynamic> getData() async {
    print('object');
    var response = await get(Uri.parse('${Con.url}viewrental.php'));
    print(response.body);
    var res = jsonDecode(response.body);
    return res;
  }
}

  var data = {
    "id": widget.rental_id,

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: FutureBuilder(
        future: getData(),
    builder: (context, snapshot) {
    if (!snapshot.hasData) {


          child: ListView(
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     width: 300,
              //     height: 200,
              //     decoration: BoxDecoration(
              //       color: Colors.yellow,
              //       border: Border.all(width: 5,color: Colors.black87,),
              //       borderRadius: BorderRadius.circular(10,),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(

                  child: Image.asset('lib/assets/img/seltos-exterior-right-front-three-quarter.webp'),
                ),
              ),
Text("Specifications",style: TextStyle(fontSize: 25),),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 98,
                    child: Card(
                      elevation:3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text('price:${snapshot.data![index]['price']}',style: TextStyle(
                        fontSize:20),
                      ),

                    ),
                  ),
                  Container(
                    height: 100,
                    width: 98,
                    child: Card(
                      elevation:3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text('price:${snapshot.data![index]['price']}',style: TextStyle(fontSize: 20),),

                    ),
                  ),
                  Container(
                    height: 100,
                    width: 98,
                    child: Card(
                      elevation:3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text('price:${snapshot.data![index]['price']}',style: TextStyle(fontSize: 20),),

                    ),
                  ),
                  Container(
                    height: 100,
                    width: 98,
                    child: Card(
                      elevation:3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text('price:${snapshot.data![index]['price']}',style: TextStyle(fontSize: 20),),

                    ),
                  )

                ],
              ),
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(left:50.0,right: 50.0,top:10.0),
                child: Container(
                  width:100,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bokrent ()));
                  }, child: Text("book"),
                  ),
                ),
              )

            ]

          ),
      ),
    );
  }
}