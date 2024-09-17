//File: clinic_search_screen.dart//

import 'package:flutter/material.dart';

class ClinicSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f2ff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Color(0xff42475c),
                onPressed: () {},
              ),
              SizedBox(height: 16),
              Text(
                'Buscador de clínicas',
                style: TextStyle(
                  color: Color(0xff42475c),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Encuentra el mejor\ncentro médico para ti',
                style: TextStyle(
                  color: Color(0xff101249),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffdcdcfa)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Asegurado',
                          style: TextStyle(
                            color: Color(0xff7981b2),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Laura Lisbeth Quispe Carbajal',
                          style: TextStyle(
                            color: Color(0xff42475c),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xff42475c),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xfffc4e55),
                    ),
                    hintText: 'Busca por nombre',
                    hintStyle: TextStyle(color: Color(0xff7981b2)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Agenda una videoconsulta',
                style: TextStyle(
                  color: Color(0xff101249),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffb8f9f5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'docte',
                          style: TextStyle(
                            color: Color(0xff45e8dd),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Consultas médicas',
                          style: TextStyle(
                            color: Color(0xff42475c),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Atenciones por chat y videollamada',
                          style: TextStyle(
                            color: Color(0xff7981b2),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Esta información es referencial, prevalecen las Clínicas, Copagos y Coberturas detallados en tu Plan de Salud.',
                style: TextStyle(
                  color: Color(0xff7981b2),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
