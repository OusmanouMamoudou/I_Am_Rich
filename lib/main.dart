// In this code, we are building a simple Flutter application. (Dans ce code, nous construisons une application Flutter simple.)

// We import the necessary Flutter libraries. (Nous importons les bibliothèques Flutter nécessaires.)

// The main function is the entry point of our application. It calls runApp with an instance of the MyApp widget. (La fonction main est le point d'entrée de notre application. Elle appelle runApp avec une instance du widget MyApp.)

// The MyApp class is a StatelessWidget, which means it won't change its state once it's built. (La classe MyApp est un StatelessWidget, ce qui signifie qu'elle ne changera pas son état une fois qu'elle est construite.)

// In the build method of MyApp, we create the user interface of our app. We define a MaterialApp, which provides basic app structure and navigation. (Dans la méthode build de MyApp, nous créons l'interface utilisateur de notre application. Nous définissons un MaterialApp, qui fournit une structure de base pour l'application et la navigation.)

// We set some properties like debugShowCheckedModeBanner and create a Scaffold with a blue-grey background and an AppBar with a title and a dark grey background. (Nous définissons certaines propriétés comme debugShowCheckedModeBanner et créons un Scaffold avec un arrière-plan bleu-gris et une AppBar avec un titre et un arrière-plan gris foncé.)

// Inside the body of the Scaffold, we use a Stack to overlay two widgets: (À l'intérieur du body du Scaffold, nous utilisons un Stack pour superposer deux widgets :)

// A Container with a background image loaded from "images/b.jpg". (Un Container avec une image d'arrière-plan chargée depuis "images/b.jpg".)
// An Image widget with the image "images/ru.png" centered on the screen. (Un widget Image avec l'image "images/ru.png" centrée à l'écran.)
// This code creates a simple app with an image background and a centered logo. (Ce code crée une application simple avec un arrière-plan d'image et un logo centré.)

// Ousmanou Mamoudou

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
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("I Am Rich"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/b.jpg"), fit: BoxFit.fill))),
            Center(
              child: Image.asset("images/ru.png"),
            ),
          ],
        ),
      ),
    );
  }
}
