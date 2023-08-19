```dart
class CompactHomePage extends StatefulWidget{
  const CompactHomePage({Key? key}): super(key:key);
  
  @override
  State<CompactHomePage> createState() => _CompactHomePageState();
}
class _CompactHomePageState extends State<CompactHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:const Text('Layout Responsivo'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 48.0,
        height: 48.0,
      ),
    );
  }
}
```