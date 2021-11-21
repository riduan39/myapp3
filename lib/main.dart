import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
class homepage extends StatelessWidget {
  const homepage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea
      (child: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("MyApp",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
        leading: Icon(Icons.account_circle),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Center(child: Text("Accounts Details",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            subtitle: Center(child: Text("Fullfill The Statement")),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.people)),
            tileColor: Colors.cyanAccent,
          ),
          ListTile(
            title: Text("1. Your FastName"),
                tileColor: Colors.green,
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("2. Your LastName"),
            tileColor: Colors.amber,
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("3. Your Email"),
            tileColor: Colors.cyanAccent,
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Text("4. Your Phone Number"),
            tileColor: Colors.cyanAccent,
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo)),
          ),
          ListTile(
            title: Center(child: Text("Submit")),
            tileColor: Colors.white,
          ),
        ],
      ),
    ));
  }
}

