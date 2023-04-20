import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Bok extends StatefulWidget {
  const Bok({Key? key}) : super(key: key);

  @override
  State<Bok> createState() => _BokState();
}

class _BokState extends State<Bok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOOKING DETAILS"),
        centerTitle: true,
      ),
      body:Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),
                    labelText:"Name",hintText: "Name ",
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),
                    labelText:"Phone no",hintText: "Phone no ",
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),
                    labelText:"Address",hintText: "Address ",
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),
                    labelText:"From",hintText: "From",
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),
                    labelText:"destination",hintText: "destination",
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),
                    labelText:"Date",hintText: "Date",
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelText:"Time",hintText: "Time ",
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelText:"Vehicle",hintText: "Vehicle",
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
              child: Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),
                    labelText:"Payment",hintText: "Payment",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left:80.0,right: 20.0,top:10.0),
            //   child: Container(
            //     width: 100,
            //     child: TextField(
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(30.0),
            //         ),
            //         labelText:"Password",hintText: "Password",
            //       ),
            //       obscureText: true,
            //     ),            //   ),
            // ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){

                }, child: Text("Submit"))
            ),
          ],
        ),
      ),
    );
  }
}