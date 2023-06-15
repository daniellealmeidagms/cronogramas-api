import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "E-mail",
                      prefixIcon: Icon(Icons.alternate_email)
                  ),
                  validator: (value) {
                    if (value!.length < 5) {
                      return "Este e-mail parece curto demais";
                    }
                    else if (!value.contains("@")) {
                      return "Este e-mail não é válido";
                    }
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Senha",
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: ElevatedButton(
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      print("Entrou");
                    }
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.only(top: 25, bottom: 25)
                    ),
                  ),
                  child: Text("Entrar"),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: ElevatedButton(
                  onPressed: (){
                    print("Cadastrou");
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.only(top: 25, bottom: 25)
                    ),
                  ),
                  child: Text("Cadastrar"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
