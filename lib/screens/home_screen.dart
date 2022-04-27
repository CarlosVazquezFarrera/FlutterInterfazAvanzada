import 'package:avanzado/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [BackGround(), _HomeBody()],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [_Tittle(), _TableCards()],
          ),
        ),
      ),
    );
  }
}

class _Tittle extends StatelessWidget {
  const _Tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Clasify transaction',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            Text('Clasify this transaction into a particular category',
                style: TextStyle(color: Colors.white))
          ],
        )
      ],
    );
  }
}

class _TableCards extends StatelessWidget {
  const _TableCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _TableItem(
            firstColor: Color(0xffadc7f4),
            secondColor: Color(0xff3096e4),
            texto: 'General',
            icon: Icons.menu,
          ),
          _TableItem(
              firstColor: Color(0xffb693f2),
              secondColor: Color(0xff7355f3),
              texto: 'Transport',
              icon: Icons.directions_bus_rounded),
        ]),
        TableRow(children: [
          _TableItem(
            firstColor: Color(0xfff697eb),
            secondColor: Color(0xfffb43e2),
            texto: 'Shopping',
            icon: Icons.shopping_bag,
          ),
          _TableItem(
              firstColor: Color(0xffefc7ab),
              secondColor: Color(0xfff98b44),
              texto: 'Bills',
              icon: Icons.directions_bus_rounded),
        ]),
        TableRow(children: [
          _TableItem(
              firstColor: Color(0xff86a6ef),
              secondColor: Color(0xff4b72ff),
              texto: 'Entertainment',
              icon: Icons.movie),
          _TableItem(
              firstColor: Color(0xff91fe95),
              secondColor: Color(0xff47c984),
              texto: 'Grocery',
              icon: Icons.local_grocery_store),
        ]),
      ],
    );
  }
}

class _TableItem extends StatelessWidget {
  const _TableItem(
      {Key? key,
      required this.firstColor,
      required this.secondColor,
      required this.icon,
      required this.texto})
      : super(key: key);

  final Color firstColor;
  final Color secondColor;
  final IconData icon;
  final String texto;

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(25));

    final heigth = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.all(20),
      height: heigth * 0.225,
      decoration: boxDecoration,
      child: _BodyTableItem(
        firstColor: firstColor,
        secondColor: secondColor,
        icon: icon,
        texto: texto,
      ),
    );
  }
}

class _BodyTableItem extends StatelessWidget {
  const _BodyTableItem({
    Key? key,
    required this.firstColor,
    required this.secondColor,
    required this.icon,
    required this.texto,
  }) : super(key: key);

  final Color firstColor;
  final Color secondColor;
  final IconData icon;
  final String texto;

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          firstColor,
          secondColor,
        ],
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: boxDecoration,
          padding: const EdgeInsets.all(10),
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        Text(
          texto,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: secondColor, fontSize: 17),
        )
      ],
    );
  }
}
