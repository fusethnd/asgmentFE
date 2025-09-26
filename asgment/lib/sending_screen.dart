import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendingScreen extends StatelessWidget {
  const SendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(children: [const Text('Sending Money'), Spacer()]),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/search.svg', color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              'SendingScreen',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/receipt');
        },
        tooltip: 'Receipt',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
