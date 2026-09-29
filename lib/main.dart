//lib:contient le code de l'application
//android :les fichiers pour compiler l'app sur android 
//web:les fichiers pour la compilation web
//pubspec.yaml:contient les dépendancs et ressource de l'application
import 'package:flutter/material.dart';

//le point d'entré de l'application
void main() {
  //exécute la partie affiché à l'écran des le lancement
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //configure l'application
    return MaterialApp(
      title: 'Mon Premier Projet Roua Ben Gara ',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    //alerte en cas de changement des données pour mettre à jour l'affichge
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState((){
    if (_counter >0){_counter--;}
        
      });
}

void _resetCounter(){
  setState((){
    _counter=0;
  });
}
  @override
  Widget build(BuildContext context) {
    
    //définit la structure de la page 
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    FloatingActionButton(
      heroTag: 'dec',
      onPressed: _decrementCounter, // fonction à écrire
      child: const Icon(Icons.remove),
    ),
    const SizedBox(width: 10),
    // TODO : bouton Réinitialiser (heroTag 'reset', Icons.refresh)
    FloatingActionButton(
      heroTag: 'reset',
      onPressed: _resetCounter, // fonction à écrire
      child: const Icon(Icons.refresh),
    ),
    const SizedBox(width: 10),
    FloatingActionButton(
      heroTag: 'inc',
      onPressed: _incrementCounter,
      child: const Icon(Icons.add),
    ),
  ],
      ),
       ); 
  }
}
