import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/welcome.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  final Size size=MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  StreamBuilder<User?>(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const Banner(
                        message: '@the_extremity',
                        location: BannerLocation.topEnd,
                        child: HomeScreen());
                  }
                  if (snapshot.hasError) {
                    return const Welcome();
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Scaffold(
                      body: Center(
                        child: Column(
                          children: [
                            CircularProgressIndicator(),
                            Text("Internet Seems to be slow")
                          ],
                        ),
                      ),
                    );
                  }
                  return const Banner(
                      message: '@the_extremity',
                      location: BannerLocation.topEnd,
                      child: Welcome());
                }),
      
    );
  }
}
