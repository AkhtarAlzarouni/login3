import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


  @override
  

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var Controller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
 drawer:Drawer(),
        
        appBar: AppBar(

        backgroundColor: Colors.purple,
      ),
     
 body:Column(
  children: [
    Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.only(top: 30),
      child: Image(image: AssetImage("assets/me.png")),
    ),

    Text("Sing In",style: TextStyle(fontSize: 30,color: Colors.purple),),

    Center(
      child: Container(
        width: 370,
        margin: EdgeInsets.only(top: 30),
        child: TextFormField(style: TextStyle(color: Colors.purple),
          keyboardType: TextInputType.emailAddress,
          maxLines: 5,
          minLines: 1,
          controller: Controller,
          decoration: InputDecoration( 
            prefixIcon: Icon(Icons.email),
            labelText: "Entar Email",
            border: OutlineInputBorder(borderRadius: BorderRadius.only(topLeft:Radius.circular(30),bottomRight:Radius.circular(30)))
          ),
        ),
      ),
    ),
    Center(
      child: Container(
        width: 370,
     margin: EdgeInsets.only(top: 30),
        child: TextFormField(
          
          maxLines: 5,
          minLines: 1,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.password_outlined),
            labelText: "Entar Password",
            border: OutlineInputBorder(borderRadius: BorderRadius.only(topLeft:Radius.circular(30),bottomRight:Radius.circular(30)))
          ),
        ),
      
      ),
    ),
    Container(
      width: 100,
      height: 50,
      margin: EdgeInsets.only(top: 30),
      child: MaterialButton(onPressed: (){
        print(Controller.text);
      }, child: Text("LogIn",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),color: Colors.purple, shape: RoundedRectangleBorder
      (borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40)))),
      
     
      
      

    ),
    Container(
      margin: EdgeInsets.only(top: 30),
      child: Text("I forgot password",style: TextStyle(fontSize: 12,color: Colors.purple),)),
    Container(
      margin: EdgeInsets.only(top: 30),
      child: Text("Create a new account",style: TextStyle(fontSize: 12,color: Colors.purple),))

  ],
 ) ,
   
    );
  }
} 