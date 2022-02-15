import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LI();
}

class LI extends State<Login> {
  String? _dropDownText;
  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        elevation: 4,
        title: Row(
          children: [
            Text(
              'บริษัทชินรัช',
              style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  items: <String>['Latest', 'Earliest'].map((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.grey),
                        ));
                  }).toList(),
                  hint: (_dropDownText == null)
                      ? const Text('select')
                      : Text(_dropDownText!),
                  onChanged: (value) {
                    if (value == 'Latest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    } else if (value == 'Earliest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    }
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Expanded(
                            child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200/300'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        )),
                        Text(
                          'Jame',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout_outlined,
                          size: 19,
                          color: Colors.redAccent,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(
                        right: BorderSide(width: 0.4, color: Colors.blueGrey))),
                //color: Colors.green,
                child: Column(
                  children: [
                    Text('ผู้ใช้',
                        style: Theme.of(context).textTheme.headline2),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'ชื่อผู้ใช้'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'รหัสผ่าน'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('ลงทะเบียน'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainMenu()),
                        );
                      },
                      child: const Text('ลงชื่อเข้าใช้'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Forgotpassword()),
                        );
                      },
                      child: const Text('ลืมรหัสผ่าน'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Test()),
                        );
                      },
                      child: const Text('ลืมรหัสผ่าน'),
                    ),
                    Text(
                        '112 ซ.รามคำแหง 112 ถ.รามคำแหง แขวงสะพานสูง เขตสะพานสูง กรุงเทพฯ 10240 Tel. 02-729-3210 Fax.02-729-5210'),
                    new Image.asset(
                      'assets/a1.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    Text('SF'),
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Text('เจ้าหน้าที่',
                        style: Theme.of(context).textTheme.headline2),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'ชื่อผู้ใช้'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'รหัสผ่าน'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'รหัสภายใน'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('ลงทะเบียน'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainMenu2()),
                        );
                      },
                      child: const Text('ลงชื่อเข้าใช้'),
                    ),
                    Text(
                        '112 ซ.รามคำแหง 112 ถ.รามคำแหง แขวงสะพานสูง เขตสะพานสูง กรุงเทพฯ 10240 Tel. 02-729-3210 Fax.02-729-5210'),
                    new Image.asset(
                      'assets/a4.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    Text('PFI'),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({Key? key}) : super(key: key);

  @override
  State<Forgotpassword> createState() => FP();
}

class FP extends State<Forgotpassword> {
  String? _dropDownText;
  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        elevation: 4,
        title: Row(
          children: [
            Text(
              'กู้คือรหัสผ่าน',
              style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  items: <String>['Latest', 'Earliest'].map((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.grey),
                        ));
                  }).toList(),
                  hint: (_dropDownText == null)
                      ? const Text('select')
                      : Text(_dropDownText!),
                  onChanged: (value) {
                    if (value == 'Latest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    } else if (value == 'Earliest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    }
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Expanded(
                            child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200/300'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        )),
                        Text(
                          'Jame',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout_outlined,
                          size: 19,
                          color: Colors.redAccent,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(
                        right: BorderSide(width: 0.4, color: Colors.blueGrey))),
                //color: Colors.green,
                child: Column(
                  children: [
                    Text('ใส่อีเมลของท่านเพื่อกู้คืนพาสเวิด',
                        style: Theme.of(context).textTheme.headline2),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'อีเมล'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('ตกลง'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                      child: const Text('back to log in'),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => MM();
}

class MM extends State<MainMenu> {
  String? _dropDownText;
  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        elevation: 4,
        title: Row(
          children: [
            Text(
              'หน้าหลัก',
              style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  items: <String>['Latest', 'Earliest'].map((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.grey),
                        ));
                  }).toList(),
                  hint: (_dropDownText == null)
                      ? const Text('select')
                      : Text(_dropDownText!),
                  onChanged: (value) {
                    if (value == 'Latest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    } else if (value == 'Earliest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    }
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Expanded(
                            child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200/300'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        )),
                        Text(
                          'Jame',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout_outlined,
                          size: 19,
                          color: Colors.redAccent,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(
                        right: BorderSide(width: 0.4, color: Colors.blueGrey))),
                //color: Colors.green,
                child: Column(
                  children: [
                    Text('สถานะงานตรวจสอบ',
                        style: Theme.of(context).textTheme.headline2),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'ชื่อบริษัท'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('ตกลง'),
                    ),
                    Text('สถานะใบร.1',
                        style: Theme.of(context).textTheme.headline2),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'ชื่อบริษัท'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('ตกลง'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                      child: const Text('back to log in'),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class MainMenu2 extends StatefulWidget {
  const MainMenu2({Key? key}) : super(key: key);

  @override
  State<MainMenu2> createState() => MM2();
}

class MM2 extends State<MainMenu2> {
  String? _dropDownText;
  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        elevation: 4,
        title: Row(
          children: [
            Text(
              'หน้าหลัก1',
              style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  items: <String>['Latest', 'Earliest'].map((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.grey),
                        ));
                  }).toList(),
                  hint: (_dropDownText == null)
                      ? const Text('select')
                      : Text(_dropDownText!),
                  onChanged: (value) {
                    if (value == 'Latest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    } else if (value == 'Earliest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    }
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Expanded(
                            child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200/300'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        )),
                        Text(
                          'Jame',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout_outlined,
                          size: 19,
                          color: Colors.redAccent,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(
                        right: BorderSide(width: 0.4, color: Colors.blueGrey))),
                //color: Colors.green,
                child: Column(
                  children: [
                    Text('สถานะงานตรวจสอบ',
                        style: Theme.of(context).textTheme.headline2),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'ชื่อบริษัท'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('ตกลง'),
                    ),
                    Text('สถานะใบร.1',
                        style: Theme.of(context).textTheme.headline2),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'ชื่อบริษัท'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('ตกลง'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                      child: const Text('back to log in'),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => T1();
}

class T1 extends State<Test> {
  String? _dropDownText;
  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 100,
        elevation: 4,
        title: Row(
          children: [
            Text(
              'หน้าหลัก1',
              style: TextStyle(fontSize: 39, color: Colors.blueGrey.shade400),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  items: <String>['Latest', 'Earliest'].map((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.grey),
                        ));
                  }).toList(),
                  hint: (_dropDownText == null)
                      ? const Text('select')
                      : Text(_dropDownText!),
                  onChanged: (value) {
                    if (value == 'Latest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    } else if (value == 'Earliest') {
                      setState(() {
                        _dropDownText = value;
                      });
                    }
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Expanded(
                            child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200/300'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        )),
                        Text(
                          'Jame',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout_outlined,
                          size: 19,
                          color: Colors.redAccent,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
      body: Row(children: [
        Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border(
                      right: BorderSide(width: 0.4, color: Colors.blueGrey))),
              //color: Colors.green,
              child: Column(
                children: [
                  Text('สถานะงานตรวจสอบ',
                      style: Theme.of(context).textTheme.headline2),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'ชื่อบริษัท'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('ตกลง'),
                  ),
                  Text('สถานะใบร.1',
                      style: Theme.of(context).textTheme.headline2),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'ชื่อบริษัท'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('ตกลง'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text('back to log in'),
                  ),
                ],
              ),
            )),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.white,
            child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('dairies').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text('Loading');
                }
                return new ListView(
                  children:
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                    return new ListTile(
                      title: new Text(document.get('display_name')),
                      subtitle: Text(document.get('profession')),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
