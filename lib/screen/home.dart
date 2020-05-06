import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/nonna-logo.png'),
                width: 280.0,
                height: 280.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Pasta Della Nonna',
                style: TextStyle(
                    color: Color.fromARGB(250, 253, 253, 253),
                    fontSize: 32.0,
                    fontFamily: 'Montserrat Regular'),
              ),
              SizedBox(
                height: 60.0,
              ),
              RaisedButton(
                child: Text(
                  'VER MENÚ',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontFamily: 'Roboto'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24.0))),
                color: Colors.white,
                elevation: 1,
                padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
                onPressed: () {
                  Navigator.of(context).pushNamed('/menu');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
