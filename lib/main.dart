import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV Flutter',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Arial'),
      home: CVScreen(),
    );
  }
}

class CVScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon CV', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                'Sacha Don',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Développeur IT & Salesforce',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 20),
              buildSectionTitle('Expérience', Colors.blue.shade200),
              buildListItem(
                '• Stage Développeur Salesforce chez Glaz Tech+Fi (Décembre 2021 - Avril 2022)',
              ),
              buildListItem(
                '• Alternance Développeur Salesforce chez Glaz Tech+Fi (Septembre 2022 - Août 2023)',
              ),
              buildListItem(
                '• Développeur IT (NodeJS, jQuery) & Salesforce chez Tech\'Talents (Depuis Septembre 2023)',
              ),
              SizedBox(height: 20),
              buildSectionTitle('Compétences', Colors.green.shade200),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  buildChip('Flutter & Dart'),
                  buildChip('NodeJS, jQuery'),
                  buildChip('Salesforce'),
                  buildChip('Java'),
                  buildChip('Firebase'),
                ],
              ),
              SizedBox(height: 20),
              buildSectionTitle('Éducation', Colors.orange.shade200),
              buildListItem(
                '• DUT Informatique - IUT A, Université de Lille (2020 - 2022)',
              ),
              buildListItem(
                '• Licence Pro Développement Web et Mobile - UPHF Valenciennes (2022 - 2023)',
              ),
              buildListItem(
                '• Mastère Ingénierie des Applications et Logiciels - Efficom Lille (2023 - 2025)',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title, Color backgroundColor) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 16),
      color: backgroundColor,
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(text, style: TextStyle(fontSize: 16)),
    );
  }

  Widget buildChip(String label) {
    return Chip(
      label: Text(label, style: TextStyle(fontSize: 14)),
      backgroundColor: Colors.blue.shade100,
    );
  }
}
