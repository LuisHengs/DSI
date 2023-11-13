import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CineSujestão'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/1155.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Verificar o login (isso é um exemplo, você deve adicionar a lógica real)
                    bool loginSucceeded = true; // Lógica de verificação de login
                    if (loginSucceeded) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.red,
                    ),
                  ),
                  child: Text('Continue with Google'),
                ),
                SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () {
                    // Ação a ser executada quando a imagem for clicada
                    print('Imagem clicada');
                  },
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/R.png', // Substitua 'your_image.jpg' pelo nome da sua imagem
                        width: 100, // Largura da imagem
                        height: 100, // Altura da imagem
                      ),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Ação a ser executada quando o botão invisível for clicado
                              print('Botão invisível clicado');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.red,
        height: 50,
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // Oculta a AppBar
        child: AppBar(
          backgroundColor: Colors.black, // Fundo preto
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black, // Fundo preto
          ),
          Image.asset(
            'assets/imgfundodsi.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  'CineSugestão',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Arial',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.13,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width, // 100% de largura
              child: Text(
                'Aventura',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arial',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.21,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width, // 100% de largura
              child: Text(
                'Terror',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arial',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.5,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width, // 100% de largura
              child: Text(
                'Comédia',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Arial',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.538,
            left: MediaQuery.of(context).size.width * 0.0,
            child: Row(
              children: [
                Image.asset(
                  'assets/jumanjii.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.33,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/mumia.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.34,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/tintin.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.33,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width * 0.0,
            child: Row(
              children: [
                Image.asset(
                  'assets/branquelas.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.33,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/rush3.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.34,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/mrbean.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.33,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.75,
            left: MediaQuery.of(context).size.width * 0.0,
            child: Row(
              children: [
                Image.asset(
                  'assets/itcoisa.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.33,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/exorcistaa.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.34,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/bonecochuck.jpg',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.33,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 30,
            child: Image.asset(
              'assets/lupatransparente.png',
              height: MediaQuery.of(context).size.height * 0.07,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.0,
            left: MediaQuery.of(context).size.width * 0.42,
            child: Image.asset(
              'assets/casapnghome.png',
              height: MediaQuery.of(context).size.height * 0.07,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.0,
            left: MediaQuery.of(context).size.width * 0.025,
            child: Image.asset(
              'assets/iconepessoaa.png',
              height: MediaQuery.of(context).size.height * 0.06,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
