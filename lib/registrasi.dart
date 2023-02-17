import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen1/login.dart';

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({Key? key}) : super(key: key);

  @override
  State<RegistrasiPage> createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  GlobalKey<FormState> _key = GlobalKey();
  TextEditingController _nama = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  void getDataRegistrasi() async {
    if (_key.currentState!.validate()) {
      if (_nama.text.isEmpty || _email.text.isEmpty || _password.text.isEmpty) {
        print("Data Tidak Boleh Kosong");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: ListView(
          children: [
            SizedBox(height: 100),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                scale: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Masukan nama lengkap"),
                    prefixIcon: Icon(CupertinoIcons.person),
                    border: OutlineInputBorder(borderSide: BorderSide())),
                validator: (e) {
                  if (e!.isEmpty) {
                    return "Data nama tidak boleh kosong!";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Masukan email anda"),
                    prefixIcon: Icon(CupertinoIcons.envelope),
                    border: OutlineInputBorder(borderSide: BorderSide())),
                validator: (e) {
                  if (e!.isEmpty) {
                    return "Data email tidak boleh kosong!";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Masukan password anda"),
                    prefixIcon: Icon(CupertinoIcons.padlock),
                    border: OutlineInputBorder(borderSide: BorderSide())),
                validator: (e) {
                  if (e!.isEmpty) {
                    return "Data password tidak boleh kosong!";
                  }
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      getDataRegistrasi();
                    },
                    child: Text("SIGN UP"),
                  ),
                )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Anda sudah punya akun ?",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Login !",
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
