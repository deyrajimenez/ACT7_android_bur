import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 65),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'CARL\'S JR.',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        'Deyra Jimenez - 25',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3.0,
                          fontSize: 12.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ), //contenedor
                SizedBox(height: 40),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            child: new Image(
                              width: 250.0,
                              height: 165.1,
                              image: new AssetImage('assets/images/images.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.amber.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Icon(Icons.account_box),
                        hintText: 'Nombre de usuario',
                      ),
                    ), //Campo de Texto
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.amber.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Icon(Icons.vpn_key_rounded),
                        hintText: 'Contraseña',
                      ),
                    ), //Campo de Texto
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(20.0),
                              primary: Colors.orange,
                            ),
                            child: Text('Iniciar Sesión'),
                            onPressed: () {}), // Botón Login
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(20.0),
                              primary: Colors.red,
                            ),
                            child: Text('Cancelar'),
                            onPressed: () {}), // Botón Login
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
