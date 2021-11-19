import 'package:flutter/material.dart';
import 'package:beauty_textfield/beauty_textfield.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormState();
  }
}

class FormState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          _buildMunicipio(),
          _buildFecha(),
          _buildGenero(),
          _buildEdad(),
          _buildName(),
          RaisedButton(
            onPressed: () => {},
            color: Colors.blueAccent,
            child: Text(
              'Enviar',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildName() {
    return BeautyTextfield(
      width: double.maxFinite,
      height: 60,
      duration: Duration(milliseconds: 300),
      inputType: TextInputType.text,
      prefixIcon: Icon(Icons.coronavirus),
      placeholder: 'Sintomas',
      onTap: () {
        print('Click');
      },
      onChanged: (text) {
        print(text);
      },
      onSubmitted: (data) {
        print(data.length);
      },
    );
  }

  Widget _buildFecha() {
    return BeautyTextfield(
      width: double.maxFinite,
      height: 60,
      duration: Duration(milliseconds: 300),
      inputType: TextInputType.text,
      prefixIcon: Icon(Icons.date_range),
      placeholder: "Fecha de inicio",
      onTap: () {
        print('Click');
      },
      onChanged: (text) {
        print(text);
      },
      onSubmitted: (data) {
        print(data.length);
      },
    );
  }

  Widget _buildGenero() {
    return BeautyTextfield(
      width: double.maxFinite,
      height: 60,
      duration: Duration(milliseconds: 300),
      inputType: TextInputType.text,
      prefixIcon: Icon(Icons.group),
      placeholder: "Genero",
      onTap: () {
        print('Click');
      },
      onChanged: (text) {
        print(text);
      },
      onSubmitted: (data) {
        print(data.length);
      },
    );
  }

  Widget _buildEdad() {
    return BeautyTextfield(
      width: double.maxFinite,
      height: 60,
      duration: Duration(milliseconds: 300),
      inputType: TextInputType.text,
      prefixIcon: Icon(Icons.perm_contact_calendar),
      placeholder: "Edad",
      onTap: () {
        print('Click');
      },
      onChanged: (text) {
        print(text);
      },
      onSubmitted: (data) {
        print(data.length);
      },
    );
  }

  Widget _buildMunicipio() {
    return BeautyTextfield(
      width: double.maxFinite,
      height: 60,
      duration: Duration(milliseconds: 300),
      inputType: TextInputType.text,
      prefixIcon: Icon(Icons.place),
      placeholder: "Municipio",
      onTap: () {
        print('Click');
      },
      onChanged: (text) {
        print(text);
      },
      onSubmitted: (data) {
        print(data.length);
      },
    );
  }
}
