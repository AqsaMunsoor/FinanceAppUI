import 'package:flutter/material.dart';

class People {
  String name;
  String description;
  String imageUrl;
  String balance;
  bool isChecked;

  People({
    required this.name,
    required this.description,
    required this.balance,
    required this.imageUrl,
    this.isChecked = false,
  });
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final List<People> _peoples = [
    People(
        name: 'Daniyal',
        description: 'daniyal mehmood',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW-z3GtZUR6Bz4F-pHkuiw9PC1TOjFDqfASrhkEVk&s',
        isChecked: true,
        balance: '-\$250'),
    People(
        name: 'Ali',
        description: 'ali asghar',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW-z3GtZUR6Bz4F-pHkuiw9PC1TOjFDqfASrhkEVk&s',
        isChecked: false,
        balance: '-\$250'),
    People(
        name: 'Khattak',
        description: 'khattak mirza',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW-z3GtZUR6Bz4F-pHkuiw9PC1TOjFDqfASrhkEVk&s',
        isChecked: false,
        balance: '-\$250'),
    People(
        name: 'Huzaifa',
        description: 'huzaifa khalid',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW-z3GtZUR6Bz4F-pHkuiw9PC1TOjFDqfASrhkEVk&s',
        isChecked: false,
        balance: '-\$250'),
    People(
        name: 'Furqan',
        description: 'furqan ali',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW-z3GtZUR6Bz4F-pHkuiw9PC1TOjFDqfASrhkEVk&s',
        isChecked: false,
        balance: '-\$500'),
    People(
        name: 'Fahad',
        description: 'fahad mustafa',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW-z3GtZUR6Bz4F-pHkuiw9PC1TOjFDqfASrhkEVk&s',
        isChecked: false,
        balance: '-\$250'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: _peoples.map((person) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(person.imageUrl),
            ),
            title: Text(
                '${person.name}\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t ${person.balance}',
                style: TextStyle(
                    color: person.isChecked ? Colors.blue : Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            subtitle: Text(person.description,
                style: const TextStyle(color: Colors.white54, fontSize: 15)),
            trailing: Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              value: person.isChecked,
              onChanged: (bool? value) {
                setState(() {
                  person.isChecked = value!;
                });
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
