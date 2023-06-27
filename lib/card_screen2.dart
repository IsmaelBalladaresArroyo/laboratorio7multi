import 'package:flutter/material.dart';

class CardScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Card Widget dark'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          CardWidget(
            title: 'Titulo de la tarjeta',
            subtitle: 'Este es un subtitulo de la tarjeta creada, para poder probarla en Flutter',
            icon: Icons.car_crash,
            color: Colors.black,
            buttonAlignment: MainAxisAlignment.end,
            buttonSpacing: 8.0,
            iconSize: 30.0,
          ),
          SizedBox(height: 16.0),
          CardWidget(
            title: 'Titulo de la tarjeta',
            subtitle: 'Este es un texto de ejemplo para poder mostrar una mejor disposición del texto en una tarjeta',
            icon: Icons.car_crash,
            color: Colors.black,
            buttonAlignment: MainAxisAlignment.spaceBetween,
            buttonSpacing: 32.0,
            isLastCard: false,
            iconSize: 50.0,
          ),
          SizedBox(height: 16.0),
          CardWidget(
            title: 'Titulo de la tarjeta',
            subtitle: 'Este es un texto de ejemplo para poder mostrar una mejor disposición del texto en una tarjeta',
            icon: Icons.car_crash,
            color: Colors.black54,
            buttonAlignment: MainAxisAlignment.center,
            buttonSpacing: 8.0,
            isLastCard: true,
            iconSize: 50.0,
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final MainAxisAlignment buttonAlignment;
  final double buttonSpacing;
  final bool isLastCard;
  final double iconSize;

  const CardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.buttonAlignment,
    required this.buttonSpacing,
    this.isLastCard = false,
    this.iconSize = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: color,
                    size: iconSize,
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: isLastCard ? FontWeight.bold : FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: buttonAlignment,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      // Acción para procesar
                    },
                    child: Text(
                      'Procesar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: buttonSpacing),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      // Acción para cancelar
                    },
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
