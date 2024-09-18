import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 01 | Layout Flutter Halaman Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HalamanLogin(title: 'Halaman Login'),
    );
  }
}

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key, required this.title});

  final String title;

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tania's Mobile", style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 243, 240, 234)),),
        backgroundColor: const Color.fromARGB(255, 255, 180, 41),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 242, 235),
      body: Center (
        
        child: (
         Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0,),
         child: (
           Column(
            
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size:100,),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft, // Mengatur teks ke kiri
              child: 
                Text('Login', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,),),
              ),
            Container(
              alignment: Alignment.centerLeft, // Mengatur teks ke kiri
              child: 
                Text('Silahkan login untuk melanjutkan.', style: TextStyle(fontSize: 15,),),
              ),
            SizedBox(height: 30,),
            TextFormField(
              decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'silahkan masukan username Anda',
              labelText: 'Username *',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(
              icon: Icon(Icons.lock),
              hintText: 'Silahkan masukan password Anda',
              labelText: 'Password *',
              suffixIcon: Icon(
                  Icons.visibility, // Ikon mata
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
             onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HalamanUtama(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 200, 72),),
              child: Text("Login"),
            ),
            SizedBox(height: 10,),
            Text('Lupa Password?', style: TextStyle(fontSize: 10,),),
            SizedBox(height: 50,),
          ]
          )
         ),
         )
        ),
      ) 
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Tania's Mobile", style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 243, 240, 234)),),
        backgroundColor: const Color.fromARGB(255, 255, 180, 41),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 242, 235),

      body: Center (
        
        child: (
         Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0,),
         child: (
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              alignment: Alignment.centerLeft, // Mengatur teks ke kiri
              child: 
                Text("Selamat Datang di Tania's Mobile", style: TextStyle(fontSize: 20,),),
              ),
              SizedBox(height: 500,),
            ]
          )
         ),
         )
        ),
      )
    );
  }
}
