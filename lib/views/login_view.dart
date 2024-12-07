import 'package:flutter/material.dart';
import 'package:cinepolis/views/home_screen.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginviewState createState() => _LoginviewState();
}

class _LoginviewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 13, 78, 1),
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('fotolucu.png'),
            SizedBox(height: 100),
            SizedBox(width: 100),
            Text(
              'Hai Moviegoers!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sudah siap merasakan pengalaman menonton yang tidak terlupakan?',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email atau Nomor WhatsApp',
                hintText: 'adisaputro23@gmail.com',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: '',
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isAgreed,
                  onChanged: (bool? value) {
                    setState(() {
                      isAgreed = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                      'Ya, saya menerima syarat dan ketentuan yang berlaku.'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(10, 13, 78, 1),
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 20),
            Text('Belum punya akun?'),
            TextButton(
              onPressed: () {},
              child: Text('Daftar di sini'),
            ),
          ],
        ),
      ),
    );
  }
}
