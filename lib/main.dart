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
   TextEditingController text1controller = TextEditingController();
  TextEditingController text2controller = TextEditingController();
  double t1 = 0;
  double t2 = 0;
  
  double result =0;
 
 

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "username",
                    prefixIcon: Icon(Icons.person)
                  ),
                  controller: text1controller,
                  keyboardType: TextInputType.number,
                 
                ),
              ),
              SizedBox(height: 40,),
              
              Container(
                child: TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.lock), hintText:"Password"),
                  obscureText: true,
                  controller: text2controller,
                   keyboardType: TextInputType.number,
                
                ),
              ),
               SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){

setState(() {
  t1 =  double.parse(text1controller.text)   ;
  t2 =  double.parse(text2controller.text)   ;

  result = t1 + t2;
  
  
});


                  }, child: Text("+")),
                  ElevatedButton(onPressed: (){

setState(() {
  
   t1 =  double.parse(text1controller.text)   ;
  t2 =  double.parse(text2controller.text)   ;

  result = t1 - t2;
  
});


                  }, child: Text("-")),
                  ElevatedButton(onPressed: (){

setState(() {
   t1 =  double.parse(text1controller.text)   ;
  t2 =  double.parse(text2controller.text)   ;

  result = t1 * t2;
  
  
});


                  }, child: Text("*")),
                  ElevatedButton(onPressed: (){

setState(() {
  
  t1 =  double.parse(text1controller.text)   ;
  t2 =  double.parse(text2controller.text)   ;

  result = t1 / t2;
  
});


                  }, child: Text("/")),
                ],
              ),
              
               SizedBox(height: 40,),
               Text("TOTAL"),
               SizedBox(height: 40,),
               Text("$result", style: TextStyle(
                 fontSize: 50
               ),)
             
              
             

             
             
            ],
          ),
        ),
      ),
     
    );
  }
}
