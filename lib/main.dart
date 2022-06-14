import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      home: const MyHomePage(title: 'Form Field demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

 

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
        
          child: Column(
         
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Text(
                'No1',
              ),
              Container(
                child: TextFormField(),
              ),
              SizedBox(height: 40,),
               Text(
                'No2',
              ),
              Container(
                child: TextFormField(),
              ),
               SizedBox(height: 40,),
              ElevatedButton(onPressed: (){}, child: Text("SUM")),
               SizedBox(height: 40,),
              Text("5", style: TextStyle(
                fontSize: 50
              ),)

             
             
            ],
          ),
        ),
      ),
     
    );
  }
}
