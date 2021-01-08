import 'package:flutter/material.dart';
import 'package:tecmetra_tablet/extensions/hex.dart';
import 'package:tecmetra_tablet/pages/home/index.dart';
import 'package:tecmetra_tablet/pages/login/widgets/container_fade.dart';
import 'package:tecmetra_tablet/pages/reports/index.dart';
import 'package:tecmetra_tablet/pages/water/index.dart';
import 'package:tecmetra_tablet/widgets/app-button/index.dart';
import 'package:tecmetra_tablet/widgets/app-text-field/index.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex('#ECF4FC'),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: ContainerFade(
                width: MediaQuery.of(context).size.width / 2,
                height: 900,
                borderRadius: 0,
              ),
            ),
            Positioned(
              left: 450,
              right: 250,
              top: 200,
              child: Container(
                height: 500,
                width: 500,
                child: SafeArea(
                  child: Card(
                    elevation: 16,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 40,
                        top: 20,
                        right: 40,
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Acessar o Tecmetra",
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: HexColor.fromHex('#646483'),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Faça login para obter acesso ao sistema",
                              style: TextStyle(
                                fontSize: 20,
                                color: HexColor.fromHex('#646483'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 40,
                            ),
                            child: AppTextField(
                              hintText: 'Email',
                              roundedBorder: true,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            child: AppTextField(
                              hintText: 'Senha',
                              roundedBorder: true,
                              fontSize: 20,
                              obscureText: true,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            alignment: Alignment.topLeft,
                            child: AppButton(
                              height: 60,
                              width: 250,
                              borderRadius: 20,
                              fontSize: 20,
                              text: 'ENTRAR',
                              bold: true,
                              onPressed: () =>
                                  Navigator.pushNamedAndRemoveUntil(
                                context,
                                // '/dashboard',
                                '/dashboard',
                                (route) => false,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              left: 40,
              child: Container(
                height: 300,
                width: 400,
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.network(
                          'https://cultivatedculture.com/wp-content/uploads/2019/12/LinkedIn-Profile-Picture-Example-Tynan-Allan.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "\"O Tecmetra foi essencial na \nadministração do condomínio\"",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Rafael Bonetti",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Condomínio Tropical",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              child: SafeArea(
                child: Container(
                  width: 280,
                  height: 100,
                  child: Image.asset('lib/assets/images/logo.png'),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }
}
