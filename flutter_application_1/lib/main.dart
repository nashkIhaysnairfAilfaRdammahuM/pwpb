import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: const Testing(),
      routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
      },
    );
  }
}

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Testing'),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://source.unsplash.com/random/100x100'),
                      radius: 50,
                    ),
                    Text(
                      'Green Garden\nGo Green\nSidoarjo',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const Image(
                      image: NetworkImage(
                          'https://source.unsplash.com/random/400x300')),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Description',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 5),
                const Text(
                  'lorem ipsum dolor sit amet, consectetur adipiscingkerjngerng oerngoi erngore gnierhbnerjb njonerbjnerjbjnkjero nvknkerojvn jknerk ov jkner no vjknrev o njerknv nojerknv ojnrjenkvipernjo vkn noerjnvkjrje nov pernjovnern jovjnoerj vknjerpinv knjoeripnvjo nkjerijpnvj knernoivj kneronvij knrejovin jkner in jkner vjpi njoerknv  njerknv nrejnkv ernjvknre vnjokner nvo jnkerv ojnkervo njnerkoj erv joer vojer vnernjvo elit. erbgierbogunerb gnerigj reknv jbergnj erkhjognkhbj eroivbkhj kherjoivnhbkj erjoivnkhbrj eovknhbj erknhjlvknhbn erjlvb ervkh bjeroipvnkh nerjoipvonkhbj erjovnkhb ernjivnk brknejipkbn erkjoipbk rkejbnkbr ejbnkberjbo rkgjinkhbrknjgijpnrkb knjoiernkgipwj ',
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: GestureDetector(
                    child: const Text(
                      'Masuk',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: GestureDetector(
                    child: const Text(
                      'Daftar',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  ),
                )
              ],
            )));
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://source.unsplash.com/random/100x100'),
                  radius: 75,
                ),
                SizedBox(width: 10),
                Text(
                  'Green Garden\nGo Green\nSidoarjo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Masuk ke email Anda',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Username',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                label: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('your username'),
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Password',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                label: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('your password'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(50)),
              child: GestureDetector(
                child: const Text(
                  'Masuk',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print('Masuk');
                },
              ),
            ),
            Row(
              children: [
                Text('Belum memiliki akun?'),
                TextButton(
                  onPressed: () {},
                  child: Text('Daftar'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://source.unsplash.com/random/100x100'),
                  radius: 75,
                ),
                SizedBox(width: 10),
                Text(
                  'Green Garden\nGo Green\nSidoarjo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Daftarkan akun Anda',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Username',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                label: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('your username'),
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                label: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('your email'),
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Password',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                label: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('your password'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(50)),
              child: GestureDetector(
                child: const Text(
                  'Daftar',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print('Daftar');
                },
              ),
            ),
            Row(
              children: [
                Text('Sudah memiliki akun?'),
                TextButton(
                  onPressed: () {},
                  child: Text('Masuk'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
