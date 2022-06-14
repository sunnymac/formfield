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
   TextEditingController no1controller = TextEditingController();
  TextEditingController no2controller = TextEditingController();
  String abc = "";
 

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
                'Name',
              ),
              Container(
                child: TextFormField(
                  controller: no1controller,
                  // onChanged: (value){
                  //   setState(() {
                  //     abc = value;
                  //   });
                  // },
                ),
              ),
              SizedBox(height: 40,),
               Text(
                'Surname',
              ),
              Container(
                child: TextFormField(
                  controller: no2controller,
                ),
              ),
               SizedBox(height: 40,),
              ElevatedButton(onPressed: (){

setState(() {
  
  
});


              }, child: Text("SUM")),
               SizedBox(height: 40,),
              Text("${no1controller.text}  ${no2controller.text}", style: TextStyle(
                fontSize: 50
              ),),
             

             
             
            ],
          ),
        ),
      ),
     
    );
  }
}
