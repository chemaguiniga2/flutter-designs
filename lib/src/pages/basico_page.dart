import 'package:flutter/material.dart';

class BasicoPage extends StatefulWidget {
  BasicoPage({Key key}) : super(key: key);

  @override
  _BasicoPageState createState() => _BasicoPageState();
}

class _BasicoPageState extends State<BasicoPage> {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    );
  }

  Widget _crearTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Lago con un puente', style: estiloTitulo),
                SizedBox(height: 7.0),
                Text('Un lago en Tlahuac', style: estiloSubtitulo),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0),
          Text('41', style: TextStyle(fontSize: 20.0)),
        ],
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Ut voluptate aliquip et nisi duis magna et sunt amet enim non qui eiusmod adipisicing. Mollit incididunt Lorem pariatur mollit eu ad occaecat commodo voluptate proident Lorem consectetur. Veniam dolore eu ex duis id laborum ullamco reprehenderit elit sint mollit ad pariatur laborum. Exercitation ullamco sunt aute irure qui consectetur nisi quis.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}