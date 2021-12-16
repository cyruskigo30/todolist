import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buidNote(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Card(
            color: Colors.blue[50],
            child: ListTile(
              title: const Text('Note Title'),
              subtitle: Text(
                'Aug 16, 2021 - High',
                style: TextStyle(color: Colors.lightBlueAccent.shade400),
              ),
              trailing: Checkbox(
                onChanged: (value) {
                  print(value);
                },
                activeColor: Colors.blueAccent,
                value: true,
              ),
            ),
          ),
          // const Divider(height: 2)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'My TODO',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 5),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My List',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[600],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '0 of 10',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey[200],
                      ),
                    ),
                  ],
                ),
              );
            }
            return _buidNote(index);
          },
        ),
      ),
    );
  }
}
