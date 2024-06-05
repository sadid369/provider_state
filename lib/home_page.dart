import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/my_provider_class.dart';
import 'package:provider_state/provider_extension.dart';
import 'package:provider_state/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "Initial Text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Text Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<MyProviderClass>(
              builder: (context, provider, child) {
                return Text(
                  provider.text,
                  style: Theme.of(context).textTheme.headlineLarge,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.myProvider.changeData('Home Page Data');
              },
              child: const Text('Change Text'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ));
              },
              child: const Text('Go to Next Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
