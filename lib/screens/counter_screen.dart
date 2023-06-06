import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void increase(){
    counter ++;
    setState(() {
      
    });
  }
  void decrease(){
    counter --;
    setState(() {
      
    });
  }
  void restore(){
    counter = 0;
    setState(() {
      
    });
  }
  @override
  Widget build(Object context) {    
    const  fontSize30 = TextStyle(fontSize: 30);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter Screen"),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Counter', style: fontSize30), 
            Text('$counter', style: fontSize30)
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButtons(
        increaseFn: increase,
        decreaseFn: decrease,
        restoreFn: restore
      ),
    );
  }
}

class CustomFloatingActionButtons extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function restoreFn;
  const CustomFloatingActionButtons({
    super.key, required this.increaseFn, required this.decreaseFn, required this.restoreFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          FloatingActionButton(
          onPressed: ()=>increaseFn(),
          child: const Icon(Icons.add)),
          // const SizedBox(width: 20),
          FloatingActionButton(
          onPressed: ()=>restoreFn(),
          child: const Icon(Icons.restore)),
          // const SizedBox(width: 20),
          FloatingActionButton(
          onPressed: ()=>decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined))
      ],
    );
  }
}
