```dart
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:const Text('Layout Responsivo'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if(constraints.maxWidth < 600){
            return MompactHomePage();
          }else if(constraints.maxWidth >= 600 && constraints.maxWidth < 800){
            return MediumHomePage();
          }else {
            return ExpandedHomePage()
          }
        },
      ),
    );
  }
}```