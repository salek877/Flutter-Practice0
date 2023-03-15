import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _fruitsTextCtrl = TextEditingController();
  List fruits = [];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Listview & ListView Builder"),
                ElevatedButton(
                  onPressed: () {
                    print(fruits);
                  },
                  child: Text('Show List'),
                ),
                TextFormField(
                  controller: _fruitsTextCtrl,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Enter Fruits Name'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fruits.add(_fruitsTextCtrl.text);
                    });
                    print(fruits);
                    _fruitsTextCtrl.clear();
                  },
                  child: Text('Add Fruits'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: fruits.length,
                  itemBuilder: (buildContext, index) {
                    return Card(
                      elevation: 10,
                      child: Container(
                          color: Colors.blue[300],
                          width: _width / 3,
                          height: _width / 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${fruits[index]}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
