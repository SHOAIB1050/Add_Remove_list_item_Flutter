import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> NAME = [
    'JAN',
    'FEB',
    'MAR',
    'APR',
    'MAY',
    'JUN',
    'JULY',
    'AUG',
    'SEP',
    'OCT',
    'NOV',
    'DEC'
  ];
  List<String> Tenp = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Text(
              'Add Remove Items',
              style: TextStyle(color: Colors.white),
            )),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      itemCount: NAME.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            setState(() {
                              if(Tenp.contains(NAME[index].toString())){
                                Tenp.remove(NAME[index].toString());
                              }
                              else{
                                Tenp.add(NAME[index].toString());
                              }
                            });
                            print('add items');
                            print(Tenp.toString());
                          },
                          child: Card(
                            child: ListTile(
                              title: Text(NAME[index].toString()),
                              trailing: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Tenp.contains(NAME[index].toString()) ? Colors.red : Colors.green
                                ),
                                height: 40,
                                width: 80,
                                child: Center(
                                  child: Text(Tenp.contains(NAME[index].toString()) ? 'Remove' : 'Add'),
                                ),),
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}