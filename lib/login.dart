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

  // Nós de foco para detectar qual campo está ativo
  final FocusNode _focusSenha = FocusNode();

  // Controle de visibilidade da senha e da imagem do mascote
  bool _mostrarSenha = false;
  String _imagemMascote = "assets/img/padrao.png";

  @override
  void initState() {
    super.initState();
    // Escuta as mudanças de foco no campo de senha
    _focusSenha.addListener(_atualizarImagemMascote);
  }

  @override
  void dispose() {
    _focusSenha.removeListener(_atualizarImagemMascote);
    _focusSenha.dispose();
    controllerSenha.dispose();
    controllerLogin.dispose();
    super.dispose();
  }

  void _atualizarImagemMascote() {
    setState(() {
      if (_focusSenha.hasFocus) {
        // Se a senha estiver visível, mostra o mascote espiando
        _imagemMascote = _mostrarSenha
            ? "assets/img/espia.png"
            : "assets/img/nao_espia.png";
      } else {
        // Quando o campo de senha perde o foco
        _imagemMascote = "assets/img/padrao.png";
      }
    });
  }

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
                        style: TextStyle(
                          fontFamily: "Michroma",
                          fontSize: 40,
                          color: Colors.amber,
                        ),
                      ),
                      TextSpan(
                        text: "dinha",
                        style: TextStyle(fontSize: 35, color: Colors.red),
                      ),
                    ],
                  ),
                ),

                // Imagem dinâmica do mascote
                Image.asset(_imagemMascote, scale: 2),

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

                // Campo de Senha com alternância e mascote dinâmico
                TextField(
                  controller: controllerSenha,
                  focusNode: _focusSenha,
                  obscureText: !_mostrarSenha,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 69, 250, 126),
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: const Color.fromARGB(255, 40, 88, 1),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _mostrarSenha
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color.fromARGB(255, 40, 88, 1),
                      ),
                      onPressed: () {
                        setState(() {
                          _mostrarSenha = !_mostrarSenha;
                          _atualizarImagemMascote();
                        });
                      },
                    ),
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
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login de boa")),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Vixi, deu não")),
                        );
                      }
                      controllerLogin.clear();
                      controllerSenha.clear();
                    },
                    child: Text("Entrar"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("função zuada")),
                    );
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