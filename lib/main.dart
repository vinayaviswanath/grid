import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: grid(),));
}
class grid extends StatefulWidget {
  const grid({Key? key}) : super(key: key);

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
    backgroundColor: Colors.blueGrey[900],
    title: Center(
    child: Text('GridView',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 30.0,),),
    ),
    ),
    body: GridView.count(
    crossAxisCount: 4,
    crossAxisSpacing: 10.0,
    mainAxisSpacing: 10.0,
    shrinkWrap: true,
    children: List.generate(12, (index) {
    return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: NetworkImage('https://th.bing.com/th/id/OIP.W9RFknwcGfgpMFJFhQurjgHaEK?w=333&h=187&c=7&r=0&o=5&pid=1.7'),
    fit: BoxFit.cover,
    ),
    borderRadius:
    BorderRadius.all(Radius.circular(20.0),),
    ),
    ),
    );
    },),
    ),
    );
    }
    }
