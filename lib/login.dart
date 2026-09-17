/*
    Container - Column - TextField
                         TextField
                         Button
                         TextButton 


 */
import 'package:flutter/material.dart';
import 'package:salada_de_frutas/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controllerSenha = TextEditingController();
  TextEditingController controllerLogin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String login = "jocsa";
    String senha = "123";
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Sala",
                        style: TextStyle(fontFamily: "Michroma", fontSize: 25, color: Colors.amber),
                      ),
                      TextSpan(text: "dinha",style: TextStyle(fontSize: 50, color: Colors.red)),
                    ],
                  ),
                ),
                Text(
                  "Saladinha",
                  style: TextStyle(
                    fontFamily: "Michroma",
                    fontSize: 25,
                    letterSpacing: 4,
                  ),
                ),
                Text(
                  "Saladinha",
                  style: TextStyle(fontSize: 25, letterSpacing: 4),
                ),
                Image.asset("assets/img/img_01_SF.png", scale: 3),
                TextField(
                  onChanged: (value) {
                    print("${controllerLogin.text}");
                  },
                  onSubmitted: (value) {
                    print("${controllerLogin.text}");
                  },
        
                  controller: controllerLogin,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 69, 250, 126),
                    prefixIcon: Icon(Icons.alternate_email),
                    prefixIconColor: const Color.fromARGB(255, 40, 88, 1),
                    labelText: "Login",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                      color: const Color.fromARGB(255, 40, 88, 1),
                    ),
                    hintText: "Ex.: jocsa.rocha@epsa.com.br",
        
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 69, 250, 126),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: controllerSenha,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 69, 250, 126),
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: const Color.fromARGB(255, 40, 88, 1),
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                      color: const Color.fromARGB(255, 40, 88, 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 69, 250, 126),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: ElevatedButton(
                    onPressed: () {
                      if (controllerLogin.text == login &&
                          controllerSenha.text == senha) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text("Login de boa")));
                       
                      } else {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text("Vixi, deu não")));
                      }
                      controllerLogin.clear();
                      controllerSenha.clear();
                    },
                    child: Text("Entrar"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("função zuada")));
                  },
                  child: Text("Cadastre-se", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
