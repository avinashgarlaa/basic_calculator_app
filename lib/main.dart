import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1controller =   TextEditingController();
  var no2controller =   TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Calculator",style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.w500),),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white10,
        child:  Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                fillColor: Colors.white
                   ),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  controller: no1controller,
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white
                  ),
                  cursorColor: Colors.black,
                  controller: no2controller,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1controller.text.toString());
                      var no2 = int.parse(no2controller.text.toString());
                      var sum = no1+no2;
                      result = "sum of $no1 and $no2 is $sum";
                      setState(() {

                      });
                    }, child: Text("Add")),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1controller.text.toString());
                      var no2 = int.parse(no2controller.text.toString());
                      var sub = no1-no2;
                      result = "subtracting $no2 from $no1 we get $sub";
                      setState(() {

                      });
                    }, child: Text("Subtract")),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1controller.text.toString());
                      var no2 = int.parse(no2controller.text.toString());
                      var mul = no1*no2;
                      result = "multiplying $no1 and $no2 we get $mul";
                      setState(() {

                      });
                    }, child: Text("Multiply")),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1controller.text.toString());
                      var no2 = int.parse(no2controller.text.toString());
                      var div = no1/no2;
                      result = "dividing $no1 by $no2 we get ${div.toStringAsFixed(2)}";
                      setState(() {

                      });
                    }, child: Text("Divide")),
                  ],
                ),
                Padding(padding: EdgeInsets.all(21),
                child: Text(result,style: TextStyle(fontSize: 25,
                color: Colors.blue),)
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}