import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Equipe',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  image:
                      DecorationImage(image: AssetImage('images/kitten.jpg'))),
              child: Text(
                'Meu App',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Eventos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Agenda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 255,
                child: Image.asset('images/icon.png'),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(140, 100)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        )),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: () {},
                      child: Text('Documentos')),
                  ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(140, 100)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        )),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: () => Navigator.pushNamed(context, '/docs'),
                      child: Text('Agenda'))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(140, 100)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        )),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: () {},
                      child: Text('Eventos')),
                  ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(140, 100)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        )),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: () {},
                      child: Text('Fotos'))
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Equipe',
          ),
        ],
        selectedItemColor: Colors.purple,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
